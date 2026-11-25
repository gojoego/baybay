# ADR 002 — Audio-First Learning Architecture

**Status:** Accepted

**Date:** 2026-11-25

## Context

Baybay was initially conceived as a song lyrics translation application.

Requirements refinement established that the primary learning experience should be continuous audio lessons combining music, spoken vocabulary explanations, grammatical instruction, and contextual translations.

The application must support hands-free learning while minimizing initial development complexity and operational costs.

## Decision

Baybay will adopt an audio-first architecture using pre-generated audio lessons.

The existing Elixir, Phoenix, LiveView, PostgreSQL, and Ecto technology stack will be retained.

The MVP will additionally use:

- macOS text-to-speech for prototype narration.
- FFmpeg for audio assembly.
- MP3 for completed audio lessons.
- HTML5 Audio for browser playback.
- Static application assets for initial audio storage.

Song and lesson metadata will be persisted in PostgreSQL.

Initial lessons will be manually prepared and populated through database seeds.

## Alternatives Considered

### Dynamic Browser-Based Audio Lessons

Coordinate music playback and text-to-speech narration dynamically in the browser.

Not selected for the MVP due to additional playback coordination complexity and inconsistent browser behavior during background listening.

### Automated Lesson Generation

Automatically generate translations, grammatical explanations, narration, and audio lessons.

Deferred until the core learning experience has been validated.

### Static Application Without a Database

Store all song metadata and audio files as static assets.

Not selected because PostgreSQL provides structured persistence and supports future catalog expansion and lesson generation.

## Consequences

### Benefits

- Reduced implementation complexity.
- Predictable audio playback.
- Minimal runtime processing.
- No required paid AI services for prototyping.
- Separation between content generation and playback.
- Straightforward expansion toward automated lesson generation.

### Trade-Offs

- Initial lessons require manual preparation.
- Audio files must be regenerated when lesson content changes.
- Catalog expansion is initially limited.
- Audio storage requirements increase as the catalog grows.
- Narration and music distribution rights require verification.

## Future Considerations

Automated lesson generation may introduce background jobs, concurrent processing, AI-assisted linguistic analysis, external audio storage, and licensed content integrations.

These capabilities will be evaluated after the initial audio-first experience is validated.