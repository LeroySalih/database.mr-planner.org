create table learning_objective_lesson_map (
    learning_objective_id uuid references learning_objectives (learning_objective_id) not null,
    lesson_id uuid references lessons(lesson_id) not null,
    primary key (learning_objective_id, lesson_id)
);