# Introduction
In recent years, the cybersecurity landscape shifted from threats involving application code to threats on information systems. 

OWASP, a prominent figure in cybersecurity research, showcases this change in the Top 10 for 2021. 

<img width="1694" alt="Screen Shot 2021-11-15 at 5 09 33 AM" src="https://user-images.githubusercontent.com/34544005/141763078-f1012189-f267-4fde-b70a-d8a3530616fc.png">
Credit: OWASP Foundation <sup>1</sup>



For the scope of this demonstration, we will propose a solution for the following:

> - A01:2021 – Broken Access Control - Violation of the principle of least privilege <sup>2</sup>
> - A02:2021 – Cryptographic Failures - Is any data transmitted in clear text? Is encryption not enforced? <sup>3</sup>
> - A04:2021 – Insecure Design -  Incorrect Privilege Assignment, Clear Text Storage of Sensitive Data <sup>4</sup>
> - A05:2021 – Security Misconfiguration - Unnecessary features are enabled or installed (e.g. unnecessary ports) <sup>5</sup>
>- A09:2021 – Security Logging and Monitoring Failures <sup>6</sup>


## Recent Data Breaches

- October 2021: Server misconfiguration exposes proprietary source code and revenue reports. <sup>7</sup>
- August 2021: Misconfigured S3 bucket exposes the PII (e.g. phone numbers, emails) of over three million senior citizens. <sup>8</sup>
- July 2021: Misconfigured S3 bucket lacks authentication. ~9000 customers invoices were exposed. <sup>9</sup>

# Proposal

> Checkov is a static code analysis tool for infrastructure-as-code. It automates scanning cloud infrastructure and detects security and compliance misconfigurations. <sup>10</sup>

Our team proposes integrating Checkov scanning directly into Github repositories. It will allow us to detect misconfigurations before deploying to production, shifting security left in the Sytem Development LifeCycle (SDLC).

<img height="600" width="705" alt="Screen Shot 2021-11-15 at 6 45 12 AM" src="https://user-images.githubusercontent.com/34544005/141776623-2affe0f5-b8cf-4868-b8db-9c390e3a512f.png">
Credit: smartsheet <sup>11</sup>

## Demo

- PR #1: Misconfigured S3 Bucket - https://github.com/alexlop29/check-terraform/pull/2
- PR #2: Misconfigured Database - https://github.com/alexlop29/check-terraform/pull/3
- PR #3: Misconfigured Server - https://github.com/alexlop29/check-terraform/pull/5

## Benefits

- Detect misconfigurations before deployment
- Provides distributed monitoring
- Allows custom rules
- Automates compliance reports

# References
1. https://owasp.org/Top10/
2. https://owasp.org/Top10/A01_2021-Broken_Access_Control/
3. https://owasp.org/Top10/A02_2021-Cryptographic_Failures/
4. https://owasp.org/Top10/A04_2021-Insecure_Design/
5. https://owasp.org/Top10/A05_2021-Security_Misconfiguration/
6. https://owasp.org/Top10/A09_2021-Security_Logging_and_Monitoring_Failures/
7. https://thehackernews.com/2021/10/twitch-suffers-massive-125gb-data-and.html
8. https://cisomag.eccouncil.org/misconfigured-amazon-bucket-exposes-personal-data-of-millions-of-senior-citizens/
9. https://www.zdnet.com/article/artwork-archive-cloud-storage-misconfiguration-exposed-user-data-revenue-records/
10. https://github.com/bridgecrewio/checkov
11. https://www.smartsheet.com/system-development-life-cycle-guide
