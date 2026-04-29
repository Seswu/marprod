---
marp: true
theme: dark
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../../assets/logos/tech-logo.svg');
    position: absolute;
    top: 20px;
    right: 30px;
    height: 40px;
  }
---

<!-- _class: lead -->

## Architecture Deep Dive

This presentation covers our system architecture and implementation details.

---

## Tech Stack

- Backend: Node.js + Express
- Database: PostgreSQL
- Cache: Redis
- Message Queue: RabbitMQ

---

## Data Processing

```typescript
interface DataRecord {
  id: string;
  value: number;
  timestamp: Date;
}
async function processBatch(records: DataRecord[]): Promise<void> {
  const validated = records.filter(validate);
  const transformed = await transformData(validated);
  await saveToDatabase(transformed);
}
```

---

## Performance Metrics

| Operation | Latency (p50) | Throughput |
|-----------|---------------|------------|
| Read      | 12ms          | 5K req/s   |
| Write     | 18ms          | 3K req/s   |
| Update    | 15ms          | 4K req/s   |

---

## Database Schema

```sql
CREATE TABLE users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  metadata JSONB
);
```

---

## Monitoring

- Metrics: Prometheus + Grafana
- Logging: ELK Stack
- Tracing: Jaeger
- Cache hit rate: 94.3%

---

## Next Steps

1. Complete API v3 migration
2. Implement GraphQL layer
3. Enhance monitoring dashboards

---

<!-- _class: lead -->
## Questions

GitHub: github.com/company/repo
Docs: docs.company.com
