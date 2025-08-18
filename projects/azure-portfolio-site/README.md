# Azure Portfolio Site (In Progress 🚀)

## 📌 Project Overview
This is a **work-in-progress project** where I’m building a personal website hosted on **Azure**, with full **CI/CD automation** and **Infrastructure as Code (IaC)** using **Terraform**.  
The goal is to turn this into a living portfolio project that demonstrates practical **Cloud Engineering** and **DevOps** skills.

---

## 🎯 Learning Goals
- Deploy a **static website** on Azure (Static Web Apps or Blob Storage).  
- Set up **CI/CD pipelines** with GitHub Actions.  
- Define infrastructure using **Terraform** instead of manual portal clicks.  
- Experiment with **Azure services** (Key Vault, Monitor, CDN, Front Door).  
- Document and iterate on the project as if it were a real-world deployment.  

---

## 🗂 Planned Repo Structure

azure-portfolio-site/
│
├── src/ # Website source code (placeholder for now)
│
├── .github/
│ └── workflows/ # CI/CD pipelines (planned)
│
├── infra/ # Terraform configs (to be added)
│
├── docs/ # Documentation & diagrams
│ └── architecture.png (planned)
│
└── README.md

---

## 🛠 Planned Tech Stack
- **Azure**: Static Web Apps, Blob Storage, Key Vault, Monitor  
- **IaC**: Terraform (Azure provider)  
- **CI/CD**: GitHub Actions  
- **Optional Iterations**: Azure Functions, App Service, Containers, AKS  

---

## 📅 Roadmap
- [✅] **Phase 1:** Deploy static site manually in Azure.  
- [ ] **Phase 2:** Add GitHub Actions for CI/CD.  
- [ ] **Phase 3:** Move infra into Terraform configs.  
- [ ] **Phase 4:** Add monitoring, secrets management, CDN.  
- [ ] **Phase 5:** Explore containers & AKS deployment.  

---

## 📖 Notes
This project is part of my **Cloud Engineering learning path**.  
I’m starting small, then **iterating step by step** to simulate how real engineers improve infrastructure over time.  

### Hosting Decision
For the first deployment, I will use **Azure Static Web Apps** instead of Blob Storage.  

**Reasons:**
- Built-in GitHub Actions support → easier CI/CD setup.  
- Free SSL and custom domains.  
- More realistic for a production-style workflow.  

**Future Iteration:**  
I may also try deploying the same site via **Blob Storage** later to compare simplicity, cost, and flexibility.  

### Deployment Note
Azure Static Web Apps expects you to specify the folder where your site lives.  
Since my project is nested under `projects/azure-portfolio-site/src/`, I set this as the **App Location** during setup.  
This makes sure `index.html` is found correctly.


---