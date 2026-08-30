                  ┌──────────────────────┐
                  │ 1. Git Push / Merge  │
                  └──────────┬───────────┘
                             │
                             ▼
┌────────────────────────────────────────────────────────┐
│ 2. GitHub Actions Automation Runner                    │
│    ├── runs 'terraform fmt' & 'validate'               │
│    ├── runs 'terraform plan' (on Pull Requests)        │
│    └── runs 'terraform apply' (on Main Branch merge)   │
└────────────────────────────┬───────────────────────────┘
                             │ (Secure token authentication)
                             ▼
                  ┌──────────────────────┐
                  │ 3. Automated AWS     │
                  │    Infrastructure    │
                  └──────────────────────┘

