-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-- Problem     Revising the Select Query II
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-11-21, 08:29 p.m.
-- Technique   conditional-column-projection
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the city table by applying a conjunctive predicate on the country code and population columns before projecting the name field.
-- Interview   Before: "How do I retrieve specific city names based on multiple criteria?" After: "Use a SELECT statement with a WHERE clause combining the country code and population threshold. This approach runs in O(N) time, where N is the number of rows in the table, ensuring efficient filtering for the USA population requirement."
-- Pitfalls    (1) Failing to use the exact string literal 'USA' for the CountryCode column.  (2) Using an incorrect comparison operator like >= instead of the strictly greater than > operator specified for the population threshold.  (3) Selecting all columns instead of only the NAME field as required by the problem statement.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select Name from city 
where countrycode = 'USA'
AND population > 120000;
