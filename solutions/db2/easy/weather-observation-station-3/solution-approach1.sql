-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- Problem     Weather Observation Station 3
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:46 p.m.
-- Technique   distinct-modulo-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves unique city names by applying a modulo operator to the ID column and filtering for even values.
-- Interview   Before: "How would you filter for even IDs and remove duplicates?" After: "I use the MOD function to check for even IDs and the DISTINCT keyword to ensure unique results, resulting in O(N) time complexity where N is the number of rows in the STATION table."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names if multiple stations share the same name.  (2) Using an incorrect modulo divisor or operator syntax will cause a syntax error in DB2.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select distinct city from station 
where mod(id, 2) = 0;
