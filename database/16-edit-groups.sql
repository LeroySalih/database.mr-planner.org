--- =================
--- Add the join_code colum to the table
--- =================

alter table groups add column join_code text default '';
ALTER TABLE groups ADD CONSTRAINT unique_title UNIQUE (title);
ALTER TABLE groups ADD CONSTRAINT unique_join_code UNIQUE (join_code);

-- =================
-- Update existing groups join code
-- =================

-- once per DB
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- per-row random 5-char hex code
UPDATE groups
SET join_code = UPPER(LEFT(encode(gen_random_bytes(16), 'hex'), 5));