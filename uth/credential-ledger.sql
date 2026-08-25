-- UTH credential registry boundary.
-- This is a schema artifact only; no production credential is asserted by this file.

create schema if not exists uth;

create table if not exists uth.credentials (
  id uuid primary key default gen_random_uuid(),
  credential_id text not null unique,
  learner_id uuid,
  learner_display_name text,
  issuer_org text not null,
  issuer_program text not null,
  credential_type text not null,
  qualification_code text,
  title text not null,
  status text not null check (status in ('issued','active','expired','revoked','superseded')),
  issued_at timestamptz not null,
  expires_at timestamptz,
  evidence_uri text,
  source_system text not null,
  verification_hash text,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists credentials_credential_id_idx on uth.credentials(credential_id);
create index if not exists credentials_issuer_program_idx on uth.credentials(issuer_org, issuer_program);
create index if not exists credentials_learner_idx on uth.credentials(learner_id);

-- Public verification must return only a minimum public projection.
-- Do not expose learner PII, evidence locations, internal metadata or hashes unless policy permits.
create or replace view uth.public_credential_verification as
select
  credential_id,
  issuer_org,
  issuer_program,
  credential_type,
  qualification_code,
  title,
  status,
  issued_at,
  expires_at
from uth.credentials
where status in ('issued','active');
