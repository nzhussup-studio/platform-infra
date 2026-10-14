#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./generate-grafana-custom-dashboard-configmap.sh [SOURCE_DIR] [OUT_FILE]
#
# Optional env vars:
#   CM_NAME, NAMESPACE, OUT_FILE

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${1:-$SCRIPT_DIR}"
SOURCE_DIR="$(cd "$SOURCE_DIR" && pwd)"

DEFAULT_OUT_FILE="$SCRIPT_DIR/../monitoring/addons/dashboards/grafana-dashboard-custom.yaml"
OUT_FILE="${2:-${OUT_FILE:-$DEFAULT_OUT_FILE}}"
CM_NAME="${CM_NAME:-grafana-dashboard-custom}"
NAMESPACE="${NAMESPACE:-monitoring}"

json_files=("$SOURCE_DIR"/*.json)
has_json=false
if [[ -e "${json_files[0]}" ]]; then
  has_json=true
fi

{
  cat <<YAML
apiVersion: v1
kind: ConfigMap
metadata:
  labels:
    grafana_dashboard: "1"
  name: ${CM_NAME}
  namespace: ${NAMESPACE}
YAML

  if [[ "$has_json" == true ]]; then
    echo "data:"
    IFS=$'\n' json_files_sorted=($(printf '%s\n' "${json_files[@]}" | sort))
    unset IFS
    for file in "${json_files_sorted[@]}"; do
      [[ -f "$file" ]] || continue
      key="$(basename "$file")"
      python3 -m json.tool "$file" >/dev/null
      echo "  ${key}: |-"
      sed -E 's/\$\{[Dd][Ss][_ -]?[A-Za-z0-9_-]+\}/prometheus/g; s/\$\{[Dd][Ss]_[A-Za-z0-9_-]+\}/prometheus/g; s/\$\{[Dd][Ss]-[A-Za-z0-9_-]+\}/prometheus/g' "$file" | sed 's/^/    /'
      echo
    done
  else
    echo "data: {}"
  fi
} > "$OUT_FILE"

echo "Generated: $OUT_FILE"
