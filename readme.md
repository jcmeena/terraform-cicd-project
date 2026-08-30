# 🚀 Terraform CI/CD Automation Pipeline

Basic CI/CD automation pipeline for deploying AWS infrastructure using GitHub Actions GitOps workflows.

---

## 🗺️ Architectural Workflow

```text
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
```

---

## 🛠️ Developer Execution Flow

Follow these sequential implementation steps to initialize, secure, and deploy the workspace:

### 1. Local Initialization
Create your empty root directory and track it using Git:
```bash
mkdir terraform-cicd-project
cd terraform-cicd-project
git init
```

### 2. Version Control Push
Write your infrastructure files, commit them, and sync to your remote repository:
```bash
git add .
git commit -m "feat: init secure public automation pipeline"
git branch -M main
git remote add origin https://github.com/jcmeena/terraform-cicd-project.git
git push -u origin main
```

### 3. Pipeline Optimizations & Bug Fixes
* Generated a secure **GitHub Personal Access Token (PAT)** to bypass deprecated passwords.
* Provisioned security authorization credentials for the AWS interface.
* Corrected workflow YAML structure indentation errors to trigger automated runners.

Push the syntax corrections:
```bash
git add .
git commit -m "fix: restore validated trigger block formatting"
git push
```

---

## 🧪 Pipeline Validation Checklist

- [x] **GitHub Actions Runner Automation Engine**:
  - `terraform fmt -check` runs successfully.
  - `terraform validate` runs successfully.
  - `terraform plan` outputs logs safely on active Pull Requests.
  - `terraform apply` deploys automatically only on Main Branch merge hooks.
- [x] **AWS Portal Synchronization**: Verified deployment of the cloud S3 storage target bucket.
