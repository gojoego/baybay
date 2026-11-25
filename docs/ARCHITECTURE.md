# Architecture

## Overview

A unified Phoenix application with a server-driven LiveView interface and PostgreSQL persistence.

## Components

| Component | Technology |
|---|---|
| User interface | Phoenix LiveView, HEEx, Tailwind CSS |
| Application logic | Elixir, Phoenix contexts |
| Persistence | PostgreSQL, Ecto |
| Testing | ExUnit |
| Infrastructure | Docker, GitHub Actions, Fly.io |

## Application Flow

Browser ↔ Phoenix LiveView → Contexts → Ecto → PostgreSQL

External service integrations will be managed through application contexts and dedicated client modules.

## Deployment

- Hosting: Fly.io
- Hostname: lyrics.moriahproject.org
- Production database: TBD

## Architectural Constraints

- Maintain a unified application architecture.
- Separate presentation and business logic.
- Keep external API credentials server-side.
- Maintain isolation from the Moriah Project.

## Decisions

See [Architecture Decision Records](decisions/).