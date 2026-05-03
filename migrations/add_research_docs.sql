create table if not exists research_docs (
  id         uuid        primary key default gen_random_uuid(),
  name       text        not null unique,
  content    text        not null default '',
  category   text        not null default 'general',
  version    int         not null default 1,
  deleted    boolean     not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists research_docs_versions (
  id         uuid        primary key default gen_random_uuid(),
  doc_id     uuid        not null references research_docs(id) on delete cascade,
  content    text        not null,
  version    int         not null,
  edited_by  text        not null,
  created_at timestamptz not null default now()
);

alter table research_docs          enable row level security;
alter table research_docs_versions enable row level security;
