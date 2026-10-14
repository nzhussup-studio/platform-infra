---
name: mermaid-diagram
description: Create, edit, and troubleshoot Mermaid diagrams for Markdown documentation and source-controlled architecture views.
---

# Mermaid Diagram

Use this skill when the requested diagram should be authored in Mermaid or rendered directly inside Markdown documentation.

## Authoring

- Choose the Mermaid diagram type that matches the relationships: `flowchart` for architecture and process views, `sequenceDiagram` for ordered interactions, `stateDiagram-v2` for states, and `erDiagram` for data relationships.
- Use stable, unique node IDs and readable labels. Keep implementation details out of labels unless they help the reader understand a route or boundary.
- For architecture diagrams, use `flowchart TB` or `flowchart LR`, group real boundaries with subgraphs, and label solid ingress paths and dashed runtime dependencies distinctly.
- Keep each service adjacent to its dependency group so relationships stay aligned and unambiguous. If combined traffic and dependency edges cross, restructure the layout before simplifying or removing required relationships.
- Use Mermaid-supported syntax and features compatible with the target host. GitHub renders Mermaid fenced blocks in Markdown; other hosts may require a separate renderer.
- Use a restrained `classDef` palette and simple shapes. Keep subgraphs focused, avoid excessive node counts, and introduce route or interface group nodes only when they clarify fan-out.
- Avoid custom HTML, external assets, or initialization options unless the target renderer is known to support them.

## Finish

1. Check that every edge has the intended direction and every referenced node ID exists.
2. When Mermaid CLI, a preview tool, or another renderer is available, render the diagram and inspect the result. Fix overlaps, awkward grouping, unreadable labels, and excessive width.
3. When no renderer is available, state that the diagram was not rendered; still inspect syntax, IDs, and relationships in the source.
4. If a diagram is embedded and kept as a standalone `.mmd`, identify the canonical source and synchronize the copy.
