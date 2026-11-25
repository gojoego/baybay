# Development

## Prerequisites

- Elixir
- Erlang/OTP
- Phoenix
- PostgreSQL
- Git

## Installation

Install Elixir on macOS:

```bash
brew install elixir
mix local.hex
mix local.rebar
mix archive.install hex phx_new
```

## Application Setup

After Phoenix initialization and local database configuration:

```bash
mix setup
```

## Start Application

```bash
mix phx.server
```

Local URL: http://localhost:4000

## Interactive Development

```bash
iex -S mix phx.server
```

## Database

```bash
mix ecto.create
mix ecto.migrate
mix ecto.rollback
```

## Verification

```bash
mix format
mix format --check-formatted
mix compile --warnings-as-errors
mix test
```

## Dependencies

```bash
mix deps.get
```

## Configuration

- Store secrets outside version control.
- Use a dedicated local development database.
- Document required environment variables as integrations are introduced.

## Deployment

Production deployment instructions are pending.