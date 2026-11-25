# Product Requirements

## MVP Objective

Deliver an audio-first Spanish-to-English language learning experience using manually prepared music-based lessons.

## Functional Requirements

### Song Catalog

- Display available songs and audio lessons.
- Display song titles and artist information when available.
- Allow users to select a lesson.
- Initially support three curated songs.

### Audio Player

- Play and pause lessons.
- Seek within a lesson.
- Display playback progress and duration.
- Support adjustable playback speed.
- Support continuous listening without requiring interaction between lyric segments.

### Lesson Content

Each lesson must include:

- Original song segments.
- Spoken vocabulary translations.
- Relevant verb conjugations and grammatical explanations.
- Contextual explanations of idioms when applicable.
- Natural English translations of complete lyric segments.

Instruction must be concise, with reduced repetition for previously explained vocabulary.

### Content Preparation

- Manually prepare lesson scripts and lyric timestamps.
- Generate prototype narration using macOS text-to-speech.
- Assemble music and narration using FFmpeg.
- Export completed lessons as MP3 files.
- Populate the initial catalog through database seeds.

## Non-Functional Requirements

- Responsive desktop and mobile interface.
- Minimal user interaction during playback.
- Accessible audio controls.
- Secure application configuration.
- Automated testing and continuous integration.
- No required paid third-party APIs for the prototype.
- Authorized use of all distributed content.

## Prototype Acceptance Criteria

- One 30–60-second Spanish song excerpt is converted into a complete audio lesson.
- Song and lesson metadata are stored in PostgreSQL.
- The lesson appears in the application catalog.
- Users can play, pause, seek, and adjust playback speed.
- Music and narration play continuously in the intended sequence.
- Automated tests and security checks pass.

## Out of Scope

- User authentication.
- User-uploaded songs.
- Automated lesson generation.
- AI-powered translations.
- External music and lyrics APIs.
- Interactive transcripts and quizzes.
- Learning progress tracking.
- Multiple language pairs.
- Administrative portal.
- Offline downloads.