#!/bin/bash
# Individual script for: Technical Presentation
# Theme: dark
# Logo: tech-logo.svg
# Description: System Architecture Overview

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_technical.org"
MD_FILE="presentations/examples/example_technical.md"

echo "=========================================="
echo "Creating: Technical Presentation"
echo "Theme: dark | Logo: tech-logo.svg"
echo "=========================================="

# Step 1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: System Architecture Overview
#+AUTHOR: Tech Team
#+DATE: 2026-04-29

* Architecture Deep Dive

** Introduction
   This presentation covers our system architecture and implementation details.

** Tech Stack
   - Backend: Node.js + Express
   - Database: PostgreSQL
   - Cache: Redis
   - Message Queue: RabbitMQ

* Code Example

** Data Processing
   #+BEGIN_SRC typescript
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
   #+END_SRC

* Performance Metrics

| Operation | Latency (p50) | Throughput |
|-----------|---------------|------------|
| Read      | 12ms          | 5K req/s   |
| Write     | 18ms          | 3K req/s   |
| Update    | 15ms          | 4K req/s   |

* Database Schema

** Users Table
   #+BEGIN_SRC sql
   CREATE TABLE users (
     id UUID PRIMARY KEY,
     email VARCHAR(255) UNIQUE NOT NULL,
     created_at TIMESTAMP DEFAULT NOW(),
     metadata JSONB
   );
   #+END_SRC

* Monitoring

   - Metrics: Prometheus + Grafana
   - Logging: ELK Stack
   - Tracing: Jaeger
   - Cache hit rate: 94.3%

* Next Steps

   1. Complete API v3 migration
   2. Implement GraphQL layer
   3. Enhance monitoring dashboards

* Questions

   GitHub: github.com/company/repo
   Docs: docs.company.com
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step 2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
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
# System Architecture Overview

   This presentation covers our system architecture and implementation details.

## Tech Stack

   - Backend: Node.js + Express
   - Database: PostgreSQL
   - Cache: Redis
   - Message Queue: RabbitMQ

# Code Example

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

# Performance Metrics

| Operation | Latency (p50) | Throughput |
|-----------|---------------|------------|
| Read      | 12ms          | 5K req/s   |
| Write     | 18ms          | 3K req/s   |
| Update    | 15ms          | 4K req/s   |

# Database Schema

## Users Table

```sql
CREATE TABLE users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  metadata JSONB
);
```

# Monitoring

   - Metrics: Prometheus + Grafana
   - Logging: ELK Stack
   - Tracing: Jaeger
   - Cache hit rate: 94.3%

# Next Steps

   1. Complete API v3 migration
   2. Implement GraphQL layer
   3. Enhance monitoring dashboards

<!-- _class: lead -->
# Questions

   GitHub: github.com/company/repo
   Docs: docs.company.com
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step 3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_technical.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_technical.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_technical.pptx"

echo ""
echo "=========================================="
echo "Done: Technical Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_technical.pdf"
echo "  - example_technical.html"
echo "  - example_technical.pptx"
echo "=========================================="
