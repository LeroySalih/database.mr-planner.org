

-- ================================
-- Drop Activities Table
-- ================================
DROP FUNCTION IF EXISTS set_activities_order_by CASCADE;
DROP TRIGGER IF EXISTS trg_set_activities_order_by on activities CASCADE;
DROP TABLE IF EXISTS activities CASCADE;


-- ================================
-- Drop Assignments Table
-- ================================
DROP TABLE IF EXISTS assignments CASCADE;


-- ================================
-- Drop Profiles Table
-- ================================
DROP TABLE IF EXISTS group_membership CASCADE;

-- ================================
-- Drop Profiles Table
-- ================================
DROP TABLE IF EXISTS profiles CASCADE;


-- ================================
-- Drop Profiles Table
-- ================================
DROP TABLE IF EXISTS groups CASCADE;


-- ================================
-- Drop LearningObjectiveLessonMap Table
-- ================================
DROP TABLE IF EXISTS learning_objective_lesson_map CASCADE;

-- ================================
-- DROP the criteria table
-- ================================
DROP TRIGGER IF EXISTS trg_set_criteria_order_by ON criteria CASCADE;
DROP FUNCTION IF EXISTS set_criteria_order_by CASCADE;
DROP TABLE IF EXISTS criteria CASCADE;


-- ================================
-- DROP the lessons table
-- ================================
DROP TRIGGER IF EXISTS trg_set_lessons_order_by on lessons CASCADE;
DROP FUNCTION IF EXISTS set_lessons_order_by CASCADE;
DROP TABLE IF EXISTS lessons CASCADE;



-- ================================
-- DROP the units table
-- ================================
DROP TRIGGER  IF EXISTS trg_set_learning_objectives_order_by on learning_objectives CASCADE;
DROP FUNCTION IF EXISTS set_learning_objectives_order_by CASCADE;
DROP TABLE IF EXISTS learning_objectives CASCADE ;

-- ================================
-- DROP the units table
-- ================================
DROP TRIGGER  IF EXISTS trg_set_units_order_by on units CASCADE;
DROP FUNCTION IF EXISTS set_units_order_by CASCADE;
DROP TABLE IF EXISTS units CASCADE ;

-- ================================
-- DROP the courses table
-- ================================
DROP TRIGGER  IF EXISTS trg_set_courses_order_by on courses CASCADE;
DROP FUNCTION IF EXISTS set_courses_order_by CASCADE;
DROP TABLE IF EXISTS courses CASCADE;

-- ================================
-- DROP the nc_item table
-- ================================
DROP TRIGGER  IF EXISTS trg_set_nc_items_order_by on nc_items   CASCADE;
DROP FUNCTION IF EXISTS set_nc_items_order_by CASCADE;
DROP TABLE if exists nc_items CASCADE;


-- ================================
-- DROP the ncs table
-- ================================
DROP TRIGGER  IF EXISTS trg_set_ncs_order_by on ncs CASCADE;
DROP FUNCTION IF EXISTS set_ncs_order_by CASCADE;    
DROP TABLE IF EXISTS ncs CASCADE;


