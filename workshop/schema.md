# Workshop Task Schema

## Overview

The Workshop is a GitHub-based task queue that Kimi Claw uses to delegate actions to OpenClaw.

## Task Schema

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "required": ["id", "created_by", "status", "type", "request", "created_at"],
  "properties": {
    "id": {
      "type": "string",
      "description": "Unique task identifier (UUID)"
    },
    "created_by": {
      "type": "string",
      "enum": ["kimi_claw"],
      "description": "Always 'kimi_claw'"
    },
    "status": {
      "type": "string",
      "enum": ["pending", "in_progress", "completed", "failed", "cancelled"],
      "description": "Current task state"
    },
    "type": {
      "type": "string",
      "enum": ["terminal", "browser_action", "whatsapp", "screen_share", "file_operation", "system"],
      "description": "Category of action required"
    },
    "priority": {
      "type": "string",
      "enum": ["low", "normal", "high", "urgent"],
      "default": "normal"
    },
    "request": {
      "type": "string",
      "description": "Clear, specific instruction for OpenClaw"
    },
    "result": {
      "type": ["string", "object", "null"],
      "description": "Output from OpenClaw after completion"
    },
    "error": {
      "type": ["string", "null"],
      "description": "Error message if task failed"
    },
    "created_at": {
      "type": "string",
      "format": "date-time"
    },
    "updated_at": {
      "type": "string",
      "format": "date-time"
    },
    "timeout_at": {
      "type": "string",
      "format": "date-time"
    }
  }
}
```

## Task Types

| Type | Description | Example |
|------|-------------|---------|
| `terminal` | Run shell commands | `"Run npm install and start dev server"` |
| `browser_action` | Open browser, navigate | `"Open Chrome, go to gmail.com"` |
| `whatsapp` | Send WhatsApp messages | `"Send 'On my way' to +91XXXXXXXXXX"` |
| `screen_share` | Take screenshots | `"Take screenshot of current screen"` |
| `file_operation` | Read/write files | `"Create file notes.txt with content: ..."` |
| `system` | System-level actions | `"Check disk space, show running processes"` |

## Lifecycle

```
pending → in_progress → completed
   ↓          ↓            ↓
        cancelled     failed
```

## Storage

Tasks are stored as JSON files in the Workshop GitHub repo:
```
workshop/
  pending/
    task-<uuid>.json
  completed/
    task-<uuid>.json
  failed/
    task-<uuid>.json
```
