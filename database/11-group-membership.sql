create table group_membership (
    user_id text references profiles (user_id) not null,
    group_id uuid references groups (group_id) not null,
    role text not null default 'member',
    
    active boolean default true,
    created timestamp default now(),    
    primary key (user_id, group_id)
);
