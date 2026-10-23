
-- Startup Investment Analysis
-- Purpose: Analyze startup funding, company closures, and cleantech trends.
-- Source: Crunchbase companies dataset (course assignment).

-- TASK 1: Top 12 most-funded companies
SELECT
    name,
    category_code,
    status,
    funding_total_usd
FROM crunchbase.companies
WHERE funding_total_usd IS NOT NULL
ORDER BY funding_total_usd DESC
LIMIT 12;

-- TASK 2: Top 12 most-funded companies that closed
SELECT
    name,
    category_code,
    status,
    funding_total_usd
FROM crunchbase.companies
WHERE status = 'closed'
    AND funding_total_usd IS NOT NULL
ORDER BY funding_total_usd DESC
LIMIT 12;

-- TASK 3A: Identify cleantech companies
SELECT
    name,
    category_code,
    status
FROM crunchbase.companies
WHERE category_code = 'cleantech';

-- TASK 3B: Identify cleantech companies that closed
SELECT
    name,
    category_code,
    status
FROM crunchbase.companies
WHERE category_code = 'cleantech'
    AND status = 'closed';

-- TASK 4: Find cleantech companies with energy-related names
SELECT
    name,
    category_code,
    status
FROM crunchbase.companies
WHERE category_code = 'cleantech'
    AND (
        name ILIKE '%solar%'
        OR name ILIKE '%power%'
        OR name ILIKE '%energy%'
    );
