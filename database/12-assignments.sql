create table assignments (
    
    unit_id     uuid   not null references units(unit_id),
    group_id    uuid   not null references groups(group_id), 
   

    active boolean default true,
    created timestamp default now(),    
    primary key (unit_id, group_id)
);
