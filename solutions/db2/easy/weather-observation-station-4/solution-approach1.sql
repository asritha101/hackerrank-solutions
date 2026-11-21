-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Problem     Weather Observation Station 4
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:48 p.m.
-- Technique   aggregate-difference-query
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the difference between the total count of city entries and the count of unique city entries by subtracting the result of two aggregate functions.
-- Interview   Before: "How would you find the count of duplicate city names?" After: "I would subtract the count of distinct cities from the total count of cities, which runs in O(N) time complexity as it requires scanning the table to aggregate the values."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in a difference of zero rather than the count of duplicate entries.  (2) Assuming the query requires a GROUP BY clause when aggregate functions alone suffice for the entire table.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE
FROM STATION;
