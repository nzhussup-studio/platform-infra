---
name: diagram-polish
description: Review and improve an existing architecture diagram's visual hierarchy, alignment, connectors, and readability.
---

# Diagram Polish

Use this skill when a user asks to clean up, modernize, or improve an existing architecture diagram. Preserve its intended architecture and requested scope while improving the layout.

## Review and revision

1. Locate the editable source and the rendered artifact. For this repository, Mermaid is the preferred source format. Inspect the source and render a preview when a Mermaid renderer is available.
2. Check completeness against the source configuration and user request. Keep service names, routes, dependencies, and system boundaries accurate. Do not add services based only on historical notes or assumptions.
3. Identify specific visual faults: overlapping nodes or text, crossing lines, labels attached to the wrong connector, uneven spacing, unbalanced whitespace, overly wide canvases, weak grouping, or unreadable text at README scale.
4. Select a layout change that addresses the faults. Useful options include grouping fan-out edges behind route or interface nodes, separating public routes from internal dependencies, aligning related services in rows, and moving shared dependencies to a dedicated lane. Avoid adding conceptual nodes unless they make real routing or grouping easier to understand.
5. Apply a consistent visual system: a small palette, clear contrast between groups, restrained borders, consistent node sizing, concise labels, and distinct solid routes versus dashed dependencies. Use icons only when available, legible, and consistent.
6. Render the diagram and inspect it again when a Mermaid renderer is available. Otherwise review Mermaid syntax and graph structure directly. Iterate until the composition is balanced and connectors do not make relationships ambiguous.
7. Keep the source and rendered output synchronized. Update documentation embeds or links when the rendered file changes, and leave concise regeneration instructions if applicable.

## Tool handling

Use the diagram renderer or editor actually available in the current environment. If a requested MCP or Mermaid renderer is unavailable, state that plainly and continue with Mermaid source when that meets the user's goal. Never say a diagram was visually verified without inspecting a rendered preview.
