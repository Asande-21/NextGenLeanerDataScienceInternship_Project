-- Week 3 SQL Queries
-- Tables: applicants(applicant_id, ...) -> interns(intern_id, applicant_id, ...) -> hackathon_scores(intern_id, ...)

-- =====================================================
-- SETUP: create the 3 tables
-- (data is then loaded by importing applicants_with_id.csv, interns.csv and
--  hackathon_scores.csv into the table of the same name, first row as header)
-- =====================================================
DROP TABLE IF EXISTS hackathon_scores;
DROP TABLE IF EXISTS interns;
DROP TABLE IF EXISTS applicants;

CREATE TABLE applicants (
  applicant_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT,
  phone TEXT,
  domain TEXT,
  university TEXT,
  application_date TEXT,
  status TEXT
);

CREATE TABLE interns (
  intern_id INTEGER PRIMARY KEY,
  applicant_id INTEGER,
  domain TEXT,
  start_date TEXT,
  completion_status TEXT,
  FOREIGN KEY (applicant_id) REFERENCES applicants(applicant_id)
);

CREATE TABLE hackathon_scores (
  score_id INTEGER PRIMARY KEY,
  intern_id INTEGER,
  score INTEGER,
  domain TEXT,
  FOREIGN KEY (intern_id) REFERENCES interns(intern_id)
);

-- =====================================================
-- PART A: QUERIES
-- =====================================================

-- Explore the 3 tables first
SELECT * FROM applicants LIMIT 5;
SELECT * FROM interns LIMIT 5;
SELECT * FROM hackathon_scores LIMIT 5;

-- Query 1: Counts completed interns grouped by domain
SELECT domain, COUNT(*) AS completed_count
FROM interns
WHERE completion_status = 'Completed'
GROUP BY domain
ORDER BY completed_count DESC;

-- Query 2: Calculates the average hackathon score for each domain
SELECT domain, ROUND(AVG(score), 2) AS avg_score
FROM hackathon_scores
GROUP BY domain
ORDER BY avg_score DESC;

-- Query 3: Lists interns who scored 85 or above, as candidates for showcase/certificates (JOIN)
SELECT i.intern_id, i.domain, h.score
FROM interns i
JOIN hackathon_scores h ON i.intern_id = h.intern_id
WHERE h.score >= 85
ORDER BY h.score DESC;

-- Query 4: Compares total applicants vs completed interns per domain to find conversion rate (LEFT JOIN)
SELECT
    a.domain,
    COUNT(DISTINCT a.applicant_id) AS total_applicants,
    COUNT(DISTINCT i.intern_id) AS total_completed,
    ROUND(100.0 * COUNT(DISTINCT i.intern_id) / COUNT(DISTINCT a.applicant_id), 2) AS conversion_rate_pct
FROM applicants a
LEFT JOIN interns i
    ON a.applicant_id = i.applicant_id AND i.completion_status = 'Completed'
GROUP BY a.domain
ORDER BY conversion_rate_pct DESC;

-- Query 5: Which university produced the highest-scoring interns on average? (3-table JOIN)
SELECT
    a.university,
    COUNT(*) AS interns_scored,
    ROUND(AVG(h.score), 2) AS avg_score
FROM hackathon_scores h
JOIN interns i ON h.intern_id = i.intern_id
JOIN applicants a ON i.applicant_id = a.applicant_id
GROUP BY a.university
ORDER BY avg_score DESC;
