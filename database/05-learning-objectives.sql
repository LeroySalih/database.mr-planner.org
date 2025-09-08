
-- ===============================================================
-- 04-units.sql
-- ===============================================================

CREATE TABLE learning_objectives (
  learning_objective_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title       TEXT NOT NULL,
  tags        TEXT[] NOT NULL,
  unit_id     UUID REFERENCES units(unit_id),
  active      boolean default true,
  created     timestamp default now(),
  created_by  text default 'auto',
  order_by    int 
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_learning_objectives_order_by()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.order_by IS NULL THEN
    SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM learning_objectives;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_learning_objectives_order_by
BEFORE INSERT ON learning_objectives
FOR EACH ROW
EXECUTE FUNCTION set_learning_objectives_order_by();
