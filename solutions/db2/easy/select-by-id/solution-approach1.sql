-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
-- Problem     Select By ID
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:37 p.m.
-- Technique   sql-select-where-clause
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the CITY table by applying an equality constraint on the ID column to retrieve all associated attributes.
-- Interview   Before: "How do I fetch a specific record by its primary key?" After: "You use the WHERE clause to filter rows by the ID column. This operation runs in O(N) time complexity as it scans the table for the record with ID 1661."
-- Pitfalls    (1) Failing to include all columns by using SELECT * instead of specific column names if the schema requires explicit selection.  (2) Assuming the ID column is indexed when the problem statement does not guarantee performance characteristics.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select * from city
where id = 1661;
