-- create_nc.sql
-- Ensure the pgcrypto extension is available for gen_random_uuid()
CREATE EXTENSION IF NOT EXISTS pgcrypto;



-- Create the top‑level curriculum table
CREATE TABLE ncs (
  nc_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  active      boolean default true,
  created     timestamp default now(),
  created_by  text default 'auto',
  order_by    int
);

-- Function to set default order_id
CREATE OR REPLACE FUNCTION set_ncs_order_by()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.order_by IS NULL THEN
    SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM ncs;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_ncs_order_by
BEFORE INSERT ON ncs
FOR EACH ROW
EXECUTE FUNCTION set_ncs_order_by();
