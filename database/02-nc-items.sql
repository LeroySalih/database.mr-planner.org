

CREATE TABLE nc_items (
  nc_item_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  nc_id       UUID NOT NULL REFERENCES ncs(nc_id),
  item_text   TEXT NOT NULL,
  category    TEXT NOT NULL,
  active      boolean default true,
  created     timestamp default now(),
  created_by  text default 'auto',
  order_by    int 
);

-- Function to set default order_by
CREATE OR REPLACE FUNCTION set_nc_items_order_by()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.order_by IS NULL THEN
    SELECT COALESCE(MAX(order_by), 0) + 1 INTO NEW.order_by FROM nc_items;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to set default order
CREATE TRIGGER trg_set_nc_items_order_by
BEFORE INSERT ON nc_items
FOR EACH ROW
EXECUTE FUNCTION set_nc_items_order_by();
