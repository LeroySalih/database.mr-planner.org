create table activities (
    
    activity_id     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title           text,

    lesson_id       uuid not null references lessons(lesson_id),
    activity_type            text,
    body            jsonb, 

    active      boolean default true,
    created     timestamp default now(),
    created_by  text default 'auto',
    order_by    int   
    
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_activities_order_by()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.order_by IS NULL THEN
    SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM activities;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_activities_order_by
BEFORE INSERT ON activities
FOR EACH ROW
EXECUTE FUNCTION set_activities_order_by();