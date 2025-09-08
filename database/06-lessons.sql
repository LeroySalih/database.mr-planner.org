-- ===============================================================
-- 06-lessons.sql
-- ===============================================================

CREATE TABLE lessons (
    lesson_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title       TEXT NOT NULL,
    description TEXT,
    tags        TEXT[] NOT NULL,
    unit_id     UUID REFERENCES units(unit_id),
    active      BOOLEAN DEFAULT true,
    created     TIMESTAMP DEFAULT now(),
    created_by  TEXT DEFAULT 'auto',
    order_by    INT
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_lessons_order_by()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.order_by IS NULL THEN
        SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM lessons WHERE unit_id = NEW.unit_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_lessons_order_by
BEFORE INSERT ON lessons
FOR EACH ROW
EXECUTE FUNCTION set_lessons_order_by();