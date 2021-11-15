# Introduction
In recent years, the cybersecurity community has seen a shift from attacks on application code to the systems the code runs on. 

OWASP, a prominent leader in the cybersecurity industry, showcases this change in penetration testing methodolgies with the release of their Top 10 vulnerabilties for 2021. 

<img width="1694" alt="Screen Shot 2021-11-15 at 5 09 33 AM" src="https://user-images.githubusercontent.com/34544005/141763078-f1012189-f267-4fde-b70a-d8a3530616fc.png">
Credit: OWASP Foundation<sup>1</sup>



For the scope of this demonstration, we will propose a solution for the following vulnerabilties:

> - A01:2021 – Broken Access Control - Violation of the principle of least privilege<sup>2</sup>
> - A02:2021 – Cryptographic Failures - Is any data transmitted in clear text? Is encryption not enforced?<sup>3</sup>
> - A04:2021 – Insecure Design -  Incorrect Privilege Assignment, Clear Text Storage of Sensitive Data<sup>4</sup>
> - A05:2021 – Security Misconfiguration - Unnecessary features are enabled or installed (e.g. unnecessary ports)<sup>5</sup>
>- A09:2021 – Security Logging and Monitoring Failures<sup>6</sup>


# Examples

- August 2021: Misconfigured S3 bucket exposes the PII (e.g. phone numbers, emails) of over three million senior citizens.<sup>7</sup>
- 


# References
<sup>1</sup> https://owasp.org/Top10/
<sup>2</sup> https://owasp.org/Top10/A01_2021-Broken_Access_Control/
<sup>3</sup> https://owasp.org/Top10/A02_2021-Cryptographic_Failures/
<sup>4</sup> https://owasp.org/Top10/A04_2021-Insecure_Design/
<sup>5</sup> https://owasp.org/Top10/A05_2021-Security_Misconfiguration/
<sup>6</sup> https://owasp.org/Top10/A09_2021-Security_Logging_and_Monitoring_Failures/
<sup>7</sup> https://cisomag.eccouncil.org/misconfigured-amazon-bucket-exposes-personal-data-of-millions-of-senior-citizens/


Over the course of the demonstration, we will:
- Introduce the Problem
- Propose a Solution
- Showcase several examples
