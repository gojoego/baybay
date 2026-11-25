# Application Architecture

## Overview

Baybay is a server-rendered web application built with Elixir, Phoenix, Phoenix LiveView, and PostgreSQL.

The initial architecture prioritizes simplicity, maintainability, and future extensibility.

## Technology Stack

| Component | Technology |
|---|---|
| Programming language | Elixir |
| Web framework | Phoenix |
| User interface | Phoenix LiveView and HEEx |
| Styling | Tailwind CSS and daisyUI |
| Database | PostgreSQL |
| Database access | Ecto |
| Audio playback | HTML5 Audio |
| Prototype narration | macOS text-to-speech |
| Audio processing | FFmpeg |
| Testing | ExUnit |
| CI/CD | GitHub Actions |
| Security scanning | Sobelow and Hex audit |
| Dependency management | Dependabot |
| Deployment | Fly.io |

## Application Structure

```text
Browser
  |
  v
Phoenix LiveView
  |
  v
Phoenix Contexts
  |
  v
Ecto
  |
  v
PostgreSQL
```

Audio files are served separately from database queries and played directly through the browser's native audio capabilities.

## Content Preparation Pipeline

```text
Authorized Song Recording
          +
Manually Prepared Lesson Script
          |
          v
Text-to-Speech Narration
          |
          v
FFmpeg Audio Assembly
          |
          v
Completed MP3 Lesson
          |
          v
Application Audio Assets
```

Audio preparation occurs outside the running web application during the MVP.

## Data Model

### Songs

- id
- title
- artist
- language
- source_url
- license
- inserted_at
- updated_at

### Lessons

- id
- song_id
- title
- target_language
- audio_path
- duration_seconds
- narration_script
- inserted_at
- updated_at

### Relationships

A song may have multiple lessons.

Each lesson belongs to one song.

## Application Responsibilities

### Phoenix LiveView

- Display the song catalog.
- Display lesson metadata.
- Provide the audio player interface.

### Phoenix Contexts

- Encapsulate song and lesson queries.
- Provide application-level data access.
- Maintain separation between business logic and presentation.

### PostgreSQL and Ecto

- Persist song and lesson metadata.
- Maintain relationships and data integrity.
- Populate the initial catalog through database seeds.

### Audio Storage

Prototype audio files are served as static application assets.

Production audio storage may migrate to object storage as the catalog grows.

## Security

- Content Security Policy.
- Secure browser headers.
- CSRF protection.
- Environment-based production secrets.
- Automated dependency updates.
- Static security analysis.
- Protected main branch with required CI checks.

## Deployment

The application will be containerized and deployed to Fly.io after the first functional audio lesson is completed.

Hosting costs and content distribution rights must be verified before public deployment.

## Future Architecture

Future versions may introduce:

- Automated lesson generation pipelines.
- Background processing with Oban.
- Concurrent audio processing with Elixir Tasks.
- OTP supervision for fault tolerance.
- AI-assisted linguistic analysis.
- Real-time processing updates through Phoenix PubSub.
- External object storage.
- Licensed music and lyrics integrations.

These components are intentionally excluded from the MVP.