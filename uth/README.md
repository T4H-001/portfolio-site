# University of Technical Humanity (UTH)

Institutional learning layer for Tech 4 Humanity and associated businesses.

## Purpose

UTH is not a single course site. It is the canonical education layer that turns portfolio knowledge, research, products, services, workflows, assessments and industry expertise into reusable learning assets.

## Architecture

Portfolio feeders → capability graph → schools → programs/courses → learning delivery → assessment/evidence → credentials.

### Portfolio feeders

- AI Sweet Spots
- 4HR Atlas
- AI4Tradies
- Outcome Ready
- Augmented Humanity Coach
- WorkFamilyAI
- AssureME / ConsentX
- MCP-Native
- Holo-Org
- InnovateMe
- OwnYourAI
- Tech 4 Humanity

### Delivery targets

ClassroomIO is the primary LMS integration candidate because it provides courses, cohorts, student dashboards, certificates, REST API, webhooks and MCP, and supports self-hosting. H5P is the interactive content layer; BigBlueButton is the live-class layer. These are integration boundaries, not claims that they are currently connected.

## Credential rule

The public verifier must never manufacture a positive result. A credential becomes `REAL` only when the credential service returns a valid receipt from the canonical ledger. Until then the UI must report that verification is not connected or that no verified record exists.

## Current state

- Public institutional landing/catalogue: prototype built in `uth/index.html`.
- Canonical catalogue model: `uth/catalog.json`.
- Vercel route: `/uth` and `/uth/` are mapped in the repository `vercel.json`.
- Live LMS integration: not yet wired.
- Live credential ledger: not yet wired.
- Authentication/student records: not yet wired.
- Payments: not yet wired.

## Next build stages

1. Replace static catalogue with typed API-backed catalogue.
2. Create canonical capability/skill graph.
3. Connect ClassroomIO for learner/course/cohort state.
4. Connect H5P and BigBlueButton.
5. Connect Supabase/T4H evidence and credential ledger.
6. Add credential verification endpoint.
7. Add Stripe products and enrolment flows.
8. Add enterprise/industry academy administration.
9. Deploy UTH on its own canonical domain.
