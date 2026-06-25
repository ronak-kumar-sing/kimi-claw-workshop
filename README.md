# Kimi Claw — Conversational Remote Agent

> The "mind" that answers and delegates. Accessible through Telegram as the front door for complex queries and the coordinator when local actions are needed.

## Overview

Kimi Claw serves as the conversational intelligence layer of the Friday AI assistant system. It handles general knowledge, coding help, research, and delegates complex tasks to OpenClaw when needed.

## Architecture

```
User (Telegram)
    ↓
Kimi Claw (Conversational Layer)
    ↓
OpenClaw (Action Layer) ← Workshop Tasks
    ↓
Local Machine (Mac)
```

## Capabilities

### Direct Answers (No Delegation)
- General knowledge (science, history, tech)
- Coding help, debugging, explanations
- Research summaries
- Advice and recommendations
- Math and analysis
- Translation

### Delegated to OpenClaw
- Opening apps or browser automation
- Running terminal commands
- Sending WhatsApp messages
- Taking screenshots
- File system operations
- Anything requiring the local Mac

## System Prompt

See [`system-prompt.md`](system-prompt.md) for the full Kimi Claw identity and behavior configuration.

## Workshop Tasks

The Workshop is how Kimi Claw delegates to OpenClaw:

```json
{
  "id": "auto-generated",
  "created_by": "kimi_claw",
  "status": "pending",
  "type": "terminal|browser_action|whatsapp|screen_share|file_operation",
  "priority": "normal",
  "request": "Clear, specific instruction for OpenClaw",
  "result": null,
  "created_at": "<ISO8601>",
  "updated_at": "<ISO8601>",
  "timeout_at": "<ISO8601 + 1 hour>"
}
```

## Quick Start

1. **Telegram Bot**: Message `@KimiClawBot` (or your configured bot)
2. **Ask anything**: General questions answered directly
3. **Request actions**: "Take a screenshot", "Send a WhatsApp message"
4. **Kimi Claw delegates**: Creates a Workshop task for OpenClaw
5. **Result returned**: You get the outcome in Telegram

## Configuration

| Variable | Description | Default |
|----------|-------------|---------|
| `TELEGRAM_BOT_TOKEN` | Bot token from BotFather | Required |
| `OPENCLAW_URL` | OpenClaw instance endpoint | `http://localhost:3000` |
| `WORKSHOP_REPO` | GitHub repo for task queue | Required |

## Development

```bash
# Clone
npm install

# Run locally
npm run dev

# Test
npm test
```

## License

MIT — Created for the Friday AI assistant ecosystem.
