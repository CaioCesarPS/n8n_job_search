# N8N Job Search Workflow

This project implements an automated job search workflow using N8N and PostgreSQL with pgvector extension.

## Prerequisites

- Docker and Docker Compose
- A RapidAPI key for JSearch API

## Setup

1. Clone this repository and navigate to the project directory.

2. Start the services using Docker Compose:

```bash
docker-compose up -d
```

3. Initialize the database:

- Connect to the PostgreSQL database using your preferred client
- Execute the SQL script in `scripts/init_tables.sql`

## Configuration

1. In N8N (http://localhost:5678):
   - Set up your RapidAPI credentials
   - Import the workflow schema
   - Configure the PostgreSQL connection

## Workflow Description

The workflow:

1. Fetches job postings from JSearch API
2. Filters for remote positions
3. Stores new job postings in PostgreSQL
4. Prevents duplicate entries

## Database Schema

The `job_postings` table stores:

- Job ID and title
- Employer information
- Employment type
- Location and country
- Salary information
- Job highlights and responsibilities
