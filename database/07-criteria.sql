-- ===============================================================
-- 07-criteria.sql
-- ===============================================================

CREATE TABLE criteria (
    criteria_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
     learning_objective_id UUID NOT NULL REFERENCES learning_objectives(learning_objective_id),
    title TEXT NOT NULL,
    active      BOOLEAN DEFAULT true,
    created     TIMESTAMP DEFAULT now(),
    created_by  TEXT DEFAULT 'auto',
    order_by    INT
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_criteria_order_by()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.order_by IS NULL THEN
        SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM criteria WHERE learning_objective_id = NEW.learning_objective_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_criteria_order_by
BEFORE INSERT ON criteria
FOR EACH ROW
EXECUTE FUNCTION set_criteria_order_by();