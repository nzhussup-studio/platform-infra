#!/usr/bin/env bash

# Config
POD_NAME=$(kubectl get pods -l app=kafka-broker-1 -o jsonpath="{.items[0].metadata.name}")
NAMESPACE=default
TOPICS_FILE="topics.json"
KAFKA_CMD="kafka-topics" # Adjusted for modern image

echo "📥 Fetching existing topics from Kafka..."
EXISTING_TOPICS=$(kubectl exec "$POD_NAME" -n "$NAMESPACE" -- \
  $KAFKA_CMD --bootstrap-server kafka-broker-1:29092 --list 2>/dev/null)

if [[ "$1" == "--list" ]] then
  echo $EXISTING_TOPICS
  exit 0
fi

declare -A EXISTING_MAP
while read -r topic; do
  EXISTING_MAP["$topic"]=1
done <<< "$EXISTING_TOPICS"

NEW_TOPICS=$(jq -c '.[]' "$TOPICS_FILE")
while read -r topic_json; do
  name=$(echo "$topic_json" | jq -r '.name')
  partitions=$(echo "$topic_json" | jq -r '.partitions')
  replication=$(echo "$topic_json" | jq -r '.replicationFactor')

  if [[ -z "${EXISTING_MAP[$name]}" ]]; then
    echo "➕ Creating topic: $name"
    kubectl exec "$POD_NAME" -n "$NAMESPACE" -- \
      $KAFKA_CMD --bootstrap-server kafka-broker-1:29092 \
      --create --if-not-exists --topic "$name" \
      --partitions "$partitions" --replication-factor "$replication"
  else
    echo "✅ Topic already exists: $name"
    EXISTING_MAP["$name"]=2
  fi
done <<< "$NEW_TOPICS"

echo "🧹 Checking for stale topics..."
for topic in "${!EXISTING_MAP[@]}"; do
  if [[ "${EXISTING_MAP[$topic]}" == "1" ]]; then
    echo "❌ Deleting stale topic: $topic"
    kubectl exec "$POD_NAME" -n "$NAMESPACE" -- \
      $KAFKA_CMD --bootstrap-server kafka-broker-1:29092 \
      --delete --topic "$topic"
  fi
done

echo "✅ Topic sync complete."

