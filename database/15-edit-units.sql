-- Optional safety: avoid long blocking
\echo 'Editing Units Table.'

SET lock_timeout TO '5s';
SET statement_timeout TO '1min';


-- 1) Add column (nullable, fast)
ALTER TABLE public.units ADD COLUMN description text;

-- 2) Set the default for new rows
ALTER TABLE public.units ALTER COLUMN description SET DEFAULT '';

-- 3) Backfill existing rows
UPDATE public.units
SET description = ''
WHERE description IS NULL;

-- 4) Enforce NOT NULL once data is clean
ALTER TABLE public.units ALTER COLUMN description SET NOT NULL;



\echo 'Editing Units Table.- Completed.'

