-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
-- Problem     Japanese Cities' Attributes
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:39 p.m.
-- Technique   select-star-where-filter
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves all columns for rows where the countrycode column matches the literal string JPN.
-- Interview   Before: "How do I extract all data for a specific country?" After: "Use a SELECT * statement with a WHERE clause to filter by the countrycode, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use single quotes for the string literal JPN will cause a syntax error in DB2.  (2) Assuming the column name is case-insensitive when the database schema might enforce strict case matching for string comparisons.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select * from city
where countrycode = 'JPN';
