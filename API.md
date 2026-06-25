# Kimi Claw API

## Base URL
```
https://api.kimiclaw.friday.ai/v1
```

## Authentication
All requests require `Authorization: Bearer <TOKEN>` header.

## Endpoints

### Create Task
```http
POST /tasks
Content-Type: application/json

{
  "type": "terminal",
  "priority": "normal",
  "request": "Run npm install"
}
```

### Get Task
```http
GET /tasks/:id
```

### List Tasks
```http
GET /tasks?status=pending&limit=10
```

### Cancel Task
```http
DELETE /tasks/:id
```

## Webhooks

OpenClaw can send webhooks when tasks complete:

```json
{
  "event": "task.completed",
  "task_id": "550e8400-e29b-41d4-a716-446655440000",
  "result": "...",
  "timestamp": "2024-01-15T10:45:00Z"
}
```

## Rate Limits
- 100 requests/minute per API key
- 10 concurrent tasks max
