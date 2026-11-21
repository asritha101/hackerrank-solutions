-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:11 p.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns from the CITY table by applying a conjunctive filter on the CountryCode and Population attributes.
-- Interview   Before: "I would iterate through the table and check each row manually." After: "Using a SQL WHERE clause allows the database engine to perform an O(N) scan to filter rows where CountryCode is 'USA' and Population exceeds 100,000 efficiently."
-- Pitfalls    (1) Failing to use the exact string literal 'USA' for the CountryCode comparison.  (2) Using an incorrect comparison operator like >= instead of the strictly greater than > operator required for the population threshold.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT *
FROM CITY
WHERE CountryCode = 'USA'
AND Population > 100000;
