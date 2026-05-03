# MandateX Frontend

Next.js app that hosts the MandateX MCP server at `/api/mcp`.

## Doc Tables

- **project_docs** — internal project documentation: CONTEXT, ARCHITECTURE, BUILD,
  hypothesis docs, retros, _INDEX, _SCHEMA, INSIGHTS, and other meta docs.
- **research_docs** — external source summaries: whitepapers, specs, blog posts,
  competitor analyses. Front-matter in the markdown body carries source_url,
  date_published, etc.

All MCP tools accept an optional `table` parameter (`"project"` | `"research"`).
Default is `"project"` so existing callers are unaffected.

## Environment Variables

See `.env.example` for required variables.
