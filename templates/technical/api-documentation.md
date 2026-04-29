---
marp: true
theme: dark
paginate: true
backgroundColor: #1e1e1e
style: |
  section::before {
    content: url('../assets/logos/tech-logo.svg');
    position: absolute;
    top: 20px;
    right: 30px;
    height: 40px;
  }
---

<!-- _class: lead -->
# API Documentation
## REST API v2.0

**Base URL:** `https://api.company.com/v2`
**Date:** April 29, 2026

---

# Authentication

## Bearer Token

```bash
curl -X GET https://api.company.com/v2/users \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json"
```

**API Key Generation:** Available in dashboard under Settings → API Keys

---

# Endpoints Overview

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/users` | List all users |
| POST | `/users` | Create new user |
| GET | `/users/:id` | Get user by ID |
| PUT | `/users/:id` | Update user |
| DELETE | `/users/:id` | Delete user |

---

# Request Examples

## Create User

```typescript
POST /users
{
  "email": "user@example.com",
  "name": "John Doe",
  "role": "member",
  "metadata": {
    "department": "Engineering"
  }
}
```

**Response:** `201 Created`

---

# Response Format

## Success Response

```json
{
  "data": {
    "id": "usr_123abc",
    "email": "user@example.com",
    "name": "John Doe",
    "role": "member",
    "created_at": "2026-04-29T10:00:00Z"
  },
  "meta": {
    "version": "2.0",
    "request_id": "req_456def"
  }
}
```

---

# Error Handling

## Error Response Format

```json
{
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Invalid email format",
    "details": [
      {
        "field": "email",
        "issue": "must be a valid email address"
      }
    ]
  }
}
```

---

# Rate Limiting

- **Limit:** 1000 requests/hour per API key
- **Headers:**
  - `X-RateLimit-Limit`: Request limit
  - `X-RateLimit-Remaining`: Requests remaining
  - `X-RateLimit-Reset`: Reset timestamp

> Exceeding limit returns `429 Too Many Requests`

---

# Pagination

## List Endpoint

```bash
GET /users?page=2&limit=50
```

**Response:**

```json
{
  "data": [...],
  "pagination": {
    "page": 2,
    "limit": 50,
    "total": 1250,
    "total_pages": 25
  }
}
```

---

# Webhooks

## Configuration

```json
{
  "url": "https://your-app.com/webhook",
  "events": ["user.created", "user.updated"],
  "secret": "whsec_..."
}
```

**Events:**
- `user.created`
- `user.updated`
- `user.deleted`

---

# SDKs & Libraries

- **JavaScript/TypeScript:** `npm install @company/api-client`
- **Python:** `pip install company-api`
- **Go:** `go get github.com/company/api-go`
- **Ruby:** `gem install company_api`

---

<!-- _class: lead -->
# Questions?

## API Resources

**Documentation:** api-docs.company.com
**Status Page:** status.company.com
**Support:** api-support@company.com
