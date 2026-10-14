---
name: architecture-diagram
description: Create or update infrastructure architecture diagrams from repository configuration, including service boundaries, routes, and dependencies.
---

# Architecture Diagram

Use this skill when a requested diagram should explain how deployed services, network entry points, and infrastructure dependencies fit together.

## Workflow

1. Inspect the repository's deployment manifests, ingress or gateway routes, service definitions, config maps, and relevant documentation. Treat those files as the source of truth. Distinguish deployed resources from archived, discontinued, or external systems.
2. Define the diagram boundary from the request. Include only services that are in scope. Do not add exclusions or caveats the user did not request.
3. Map relationships explicitly: public host or path to its routed backend, internal service dependencies, persistence, and external integrations. Label inferred or externally configured endpoints accurately; do not imply a deployment is defined here if only its URL is known.
4. Use Mermaid as the default format for repository diagrams. Keep the source in a `.mmd` file when the repository needs a standalone source, and embed a Mermaid fenced block where the target README should display the diagram. Use another editable format only when Mermaid cannot express the requested diagram or the user asks for it. Do not claim to have used an unavailable connector.
5. Keep the layout readable: use a clear top-down or left-to-right flow, group related services in subgraphs, and introduce small route-group nodes when they reduce gateway fan-out. Use a restrained palette, concise labels, and distinct solid ingress versus dashed dependency edges.
6. Preview the diagram when a Mermaid renderer is available. Otherwise inspect the Mermaid source for ambiguous edges, overloaded subgraphs, long labels, and avoidable crossings, and use a modest graph rather than a sprawling service mesh.
7. Link or embed the final Mermaid diagram in the requested documentation. Keep any standalone `.mmd` and embedded copy synchronized, and state which is canonical.

## Quality bar

- A reader can identify the system boundary, entry points, service groups, and external dependencies at a glance.
- Every shown route and dependency is supported by configuration or is labeled as a configured external endpoint.
- Lines do not obscure service labels or cross through unrelated nodes. Prefer aligned, grouped paths over a fan of tangled connectors.
- Labels remain readable when the diagram is rendered in the target document; avoid shrinking the whole image to fit an unnecessarily wide layout.
- Keep source and rendered artifact together when both are useful, and ensure the rendered version reflects the latest source.
