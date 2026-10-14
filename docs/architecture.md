# Platform architecture

This diagram follows the Kubernetes manifests and Gateway API routes in this repository. It shows the public web applications, API services, identity provider, Argo CD and monitoring websites, and configured workload dependencies.

The combined traffic and dependency diagram is maintained in [architecture.mmd](./architecture.mmd) and embedded directly in the repository [README](../README.md#architecture) so GitHub can render it natively.

## Included services

| Area | Services |
| --- | --- |
| Web | Web Portfolio, Web Admin Panel |
| Backend | Base Service, Image Service, LLM Service, Account Service |
| Platform | Envoy Gateway, Keycloak, API Docs, Redis, Argo CD website, Monitoring website |
| Storage and integrations | Image persistent volume, PostgreSQL endpoints, GitHub API, configured LLM provider |

The route and service details are defined in `k8s/gateway/` and `k8s/services/`. The Argo CD website is routed by `argocd/apps/argocd-ui-route.yml`. The Monitoring URL is listed in the admin panel's infrastructure links; its backing route and workload are not defined in this repository. External database and provider connections are shown at a high level because their runtime endpoints and credentials are supplied through configuration and Kubernetes secrets.

