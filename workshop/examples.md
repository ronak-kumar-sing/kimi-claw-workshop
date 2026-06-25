# Example Tasks

## Example 1: Terminal Command

**User**: "Install the latest version of Node.js"

**Kimi Claw** creates:
```json
{
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "created_by": "kimi_claw",
  "status": "pending",
  "type": "terminal",
  "priority": "normal",
  "request": "Check current Node.js version, then install the latest LTS using nvm or official installer",
  "result": null,
  "created_at": "2024-01-15T10:30:00Z",
  "updated_at": "2024-01-15T10:30:00Z",
  "timeout_at": "2024-01-15T11:30:00Z"
}
```

---

## Example 2: Browser Action

**User**: "Open my portfolio website and take a screenshot"

**Kimi Claw** creates:
```json
{
  "id": "660e8400-e29b-41d4-a716-446655440001",
  "created_by": "kimi_claw",
  "status": "pending",
  "type": "browser_action",
  "priority": "normal",
  "request": "Open Chrome, navigate to https://ronak.dev, take a full-page screenshot and save to ~/Screenshots/",
  "result": null,
  "created_at": "2024-01-15T10:35:00Z",
  "updated_at": "2024-01-15T10:35:00Z",
  "timeout_at": "2024-01-15T11:35:00Z"
}
```

---

## Example 3: WhatsApp Message

**User**: "Send a message to my team group"

**Kimi Claw** creates:
```json
{
  "id": "770e8400-e29b-41d4-a716-446655440002",
  "created_by": "kimi_claw",
  "status": "pending",
  "type": "whatsapp",
  "priority": "high",
  "request": "Send WhatsApp message to group 'Team Alpha': 'Meeting rescheduled to 3 PM'",
  "result": null,
  "created_at": "2024-01-15T10:40:00Z",
  "updated_at": "2024-01-15T10:40:00Z",
  "timeout_at": "2024-01-15T11:40:00Z"
}
```

---

## Example 4: File Operation

**User**: "Create a todo list for today"

**Kimi Claw** creates:
```json
{
  "id": "880e8400-e29b-41d4-a716-446655440003",
  "created_by": "kimi_claw",
  "status": "pending",
  "type": "file_operation",
  "priority": "normal",
  "request": "Create file ~/Documents/todo-2024-01-15.md with content: - [ ] Review PRs - [ ] Team standup - [ ] Deploy to staging",
  "result": null,
  "created_at": "2024-01-15T10:45:00Z",
  "updated_at": "2024-01-15T10:45:00Z",
  "timeout_at": "2024-01-15T11:45:00Z"
}
```
