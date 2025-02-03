# IT Infrastructure & Security Roadmap for Mid-Sized Business

## **Author:** Spencer Vedenoff  
**Role:** IT Consultant and Software Engineer  
**Duration:** 9 Months +  

---

## **1. Introduction**

### **Overview**
A mid-sized construction company faced critical IT challenges due to its reliance on an external MSP for infrastructure management, lack of internal control over Active Directory (AD), and an unstructured IT process. This document outlines a structured IT roadmap to transition infrastructure ownership, enhance cybersecurity, implement automation, and establish long-term scalability.

### **Problem Statement**
> "The company relied heavily on an external MSP for IT operations, leading to inefficiencies in infrastructure control, security oversight, and employee onboarding/offboarding processes. Without structured IT policies, the organization faced risks in cybersecurity, hardware lifecycle management, and future scalability."

---

## **2. Key IT Challenges & Solutions**

| **Challenge** | **Solution Implemented** |
|--------------|------------------|
| **Dependence on External MSP** | Transition plan to migrate IT infrastructure internally, ensuring control over AD, network drives, and system access. |
| **Lack of Internal Active Directory (AD) Control** | Proposed transitioning AD management in-house for improved security and automation of onboarding/offboarding. |
| **Unstructured Network Drive Permissions** | Implemented AD-based role-driven access control to enhance data security and compliance. |
| **Weak Cybersecurity Awareness** | Recommended phishing awareness training with KnowBe4, quarterly security audits, and mandatory multi-factor authentication (MFA). |
| **Fragmented IT Environment (O365 vs Google Workspace)** | Proposed a consolidation plan to unify infrastructure under Microsoft O365 & Azure AD for streamlined management. |
| **No Standardized Workstation Lifecycle** | Implemented a 3-5 year workstation refresh policy with proactive hardware health monitoring. |
| **Manual Onboarding & Offboarding** | Designed a PowerShell & JSON-based automation system for seamless employee provisioning and deprovisioning. |

---

## **3. IT Infrastructure Transition Plan**

### **Current State:**
- IT infrastructure (servers, networking, VOIP, printers) managed by an MSP.
- No internal access to **Active Directory (AD)**.
- Fragmented software stack (some users on **Google Workspace, others on O365**).

### **Proposed Transition:**
1. **Phase 1 - AD Ownership Transfer (Q2 2025)**  
   - Secure **read/write access** to AD for internal IT.
   - Implement internal user access audits.
   - Begin role-based access control for network drives.

2. **Phase 2 - O365 & Azure AD Standardization (Q3 2025)**  
   - Migrate **Google Workspace users to O365** for unified IT control.  
   - Implement **Azure AD authentication** for seamless SSO.

3. **Phase 3 - Full Infrastructure Migration (Q4 2025 - Q1 2026)**  
   - Conduct **server & network handoff** from MSP to internal IT.
   - Establish **documented IT governance policies**.
   - Implement **endpoint management system** (Microsoft Endpoint Manager or ManageEngine).

---

## **4. Cybersecurity Strategy**

### **Key Security Enhancements:**
- **Phishing Prevention Training**: Implementation of **KnowBe4** for ongoing awareness & phishing simulations.
- **Quarterly Access Audits**: Regular review of **user privileges** and **sensitive data access**.
- **Multi-Factor Authentication (MFA)**: Enforced for **HR, Finance, and privileged accounts**.
- **Endpoint Security Monitoring**: Evaluating **Microsoft Defender for Endpoint** or **CrowdStrike**.
- **Disaster Recovery Plan (DRP)**: Structured **backup & recovery procedures** ensuring a 3-2-1 backup strategy (3 copies, 2 storage media, 1 offsite).

---

## **5. Workstation Lifecycle & Automation**

### **Workstation Management Policy:**
- **Lifecycle Assessment at 3-Year Mark**: Evaluate replacement vs. upgrade.
- **Windows 10 End-of-Life Compliance**: Identify and replace non-compliant devices before **October 2025**.
- **Automated Health Monitoring**: Implement **endpoint management tools** to track hardware performance.

### **Onboarding/Offboarding Automation:**
- **HRIS & AD Integration**:
  - Sync **HRIS system data** with **Active Directory**.
  - Automate user account provisioning/deprovisioning.
- **PowerShell Scripting for User Management**:
  - Auto-create accounts in AD based on department-specific templates.
  - Generate PDF asset release forms & store in cloud.
  - Scheduled JSON file comparison between **HRIS & AD** to update changes automatically.

---

## **6. IT Staffing & Future Growth Plan**

### **Current IT Staffing Model:**
- **1 IT Specialist** managing **entire IT infrastructure & support.**

### **Proposed Growth Structure:**
| **Phase** | **Role** | **Responsibility** |
|---------|---------|----------------|
| **Phase 1** | System Administrator | Lead IT operations, infrastructure transition, and automation. |
| **Phase 2** | IT Helpdesk (Jr.) | Handle **basic support**, reducing workload for higher-level IT tasks. |
| **Phase 3 (Future Expansion)** | Cybersecurity Analyst, Network Admin | Expand IT team based on company growth & security needs. |

### **Remote Work Consideration:**
- **Hybrid work flexibility for IT roles** to **retain top talent**.
- **Onsite rotation for helpdesk support** while allowing remote work for non-customer-facing roles.

---

## **7. IT Governance & Compliance**

### **Key IT Policies Implemented:**
1. **Acceptable Use Policy (AUP)** – Defined proper use of company IT resources.
2. **Security Audit Logs & Data Compliance** – Ensured audit trails for sensitive user actions.
3. **IT Asset Tracking** – Linked **issued devices to employees** via asset management software.
4. **Offsite Backup Strategy** – Evaluated **Barracuda Backup** for **disaster recovery preparedness**.

---

## **8. Conclusion & Results**

### **Impact of IT Roadmap Implementation:**
📌 **Reduced reliance on external MSP** by transitioning **key IT infrastructure in-house**.  
📌 **Streamlined onboarding/offboarding** with automated **PowerShell-based AD integrations**.  
📌 **Improved cybersecurity** through **MFA, phishing training, and regular audits**.  
📌 **Standardized IT environment** under **Microsoft O365 & Azure AD** for efficiency.  
📌 **Prepared company for Windows 10 EOL**, preventing security gaps.  
📌 **Defined a long-term IT staffing strategy** to support company growth.  

This structured IT plan ensures the company is **secure, scalable, and future-ready.**

---

## **Next Steps & GitHub Integration**
- Upload **PowerShell automation scripts** to GitHub with README documentation.
- Create a **LinkedIn post showcasing this case study** as an IT transformation success story.
- Use this as a **portfolio piece for future opportunities** in IT infrastructure, automation, or security roles.

---

### **[Download PDF Version]** *(Optional: Host a polished PDF version of this on your GitHub/portfolio site.)*
