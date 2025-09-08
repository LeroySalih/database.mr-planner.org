

CREATE TABLE courses (
  course_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title       TEXT NOT NULL,
  nc_id       UUID NULL REFERENCES ncs(nc_id) ON DELETE CASCADE,
  tags        TEXT[] NOT NULL,
  active      boolean default true,
  created     timestamp default now(),
  created_by  text default 'auto',
  order_by    int 
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_courses_order_by()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.order_by IS NULL THEN
    SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM courses;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_courses_order_by
BEFORE INSERT ON courses
FOR EACH ROW
EXECUTE FUNCTION set_courses_order_by();
