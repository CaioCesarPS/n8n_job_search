CREATE TABLE job_postings (
    job_id TEXT PRIMARY KEY,
    job_title TEXT NOT NULL,
    employer_name TEXT NOT NULL,
    job_employment_type TEXT,
    job_apply_link TEXT,
    job_posted_at TIMESTAMPTZ,
    job_location TEXT,
    job_country CHAR(2),
    job_min_salary NUMERIC,
    job_max_salary NUMERIC,
    job_salary_period TEXT,
    job_highlights JSONB
);
