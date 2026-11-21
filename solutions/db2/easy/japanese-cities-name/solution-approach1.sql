-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-- Problem     Japanese Cities' Names
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:40 p.m.
-- Technique   simple-select-where-clause
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters the CITY table by matching the COUNTRYCODE column against the literal string 'JPN' to retrieve only the NAME column values.
-- Interview   Before: "How do I extract specific rows based on a condition?" After: "Use the WHERE clause to filter records. This operation runs in O(N) time as it performs a full table scan to identify all rows where the COUNTRYCODE is 'JPN'."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'JPN' causes a syntax error in DB2.  (2) Assuming the column name is case-insensitive when the database collation might enforce strict case matching for 'JPN'.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select name from city
where countrycode = 'JPN';
