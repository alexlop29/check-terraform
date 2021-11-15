# Introduction
As technology evolves, so have malicious users (i.e. hackers). 

In recent years, the cybersecurity community has seen a shift from software-based threats to hardware-based threats. 

OWASP, a prominent leader in the cybersecurity industry, showcases this change in penetration testing methodolgies with the release of their Top 10 vulnerabilties for 2021. 

<img width="1694" alt="Screen Shot 2021-11-15 at 5 09 33 AM" src="https://user-images.githubusercontent.com/34544005/141763078-f1012189-f267-4fde-b70a-d8a3530616fc.png">
Credit: OWASP Foundation

For the scope of this demonstration, we propose a solution for the following vulnerabilties:
- A01:2021 – Broken Access Control - Violation of the principle of least privilege
- A02:2021 – Cryptographic Failures - Is any data transmitted in clear text? Is encryption not enforced?
- A04:2021 – Insecure Design -  Incorrect Privilege Assignment, Clear Text Storage of Sensitive Data
- A05:2021 – Security Misconfiguration - Unnecessary features are enabled or installed (e.g., unnecessary ports)
- A09:2021 – Security Logging and Monitoring Failures

# Recent Examples

Over the course of the demonstration, we will:
- Introduce the Problem
- Propose a Solution
- Showcase several examples
