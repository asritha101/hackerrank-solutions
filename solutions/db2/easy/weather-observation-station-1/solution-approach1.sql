-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
-- Problem     Weather Observation Station 1
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:41 p.m.
-- Technique   basic-select-projection
-- Time        O(N)
-- Space       O(N)
-- Insight     The query performs a full table scan to retrieve all rows from the STATION table, projecting only the CITY and STATE columns.
-- Interview   Before: "I need to filter the data based on specific criteria." After: "Since the problem asks for all entries, a simple SELECT statement with O(N) time complexity is sufficient to retrieve the required columns from the STATION table."
-- Pitfalls    (1) Selecting columns not present in the STATION table schema.  (2) Failing to include both CITY and STATE columns as explicitly required by the problem statement.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select city, state from station;
