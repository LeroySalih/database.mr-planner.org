-- ==============================================
-- Profile Table to store user attributes
-- ==============================================

CREATE TABLE profiles (
    user_id text PRIMARY KEY , -- 1 to 1 relationship with users
    first_name TEXT NULL,     
    last_name TEXT NULL,
    is_teacher BOOLEAN DEFAULT false,


    active      BOOLEAN DEFAULT true,
    created     TIMESTAMP DEFAULT now(),
    created_by  TEXT DEFAULT 'auto',
    order_by    INT
);