# Security Policy

## Reporting a Vulnerability

If you believe you have found a security vulnerability in this Homebrew tap — including issues with
formula integrity, incorrect checksums, or unexpected binary substitution — please report it
privately. **Do not open a public issue.**

For vulnerabilities in the Besu client itself (not the packaging), please report to
[besu-eth/besu](https://github.com/besu-eth/besu/security/advisories/new) instead.

### Preferred method — GitHub private vulnerability reporting

Use the **[Report a vulnerability](https://github.com/besu-eth/homebrew-besu/security/advisories/new)**
button in the Security tab of this repository. This opens a private draft advisory visible only to
maintainers and is the fastest path to triage.

### Alternative — email

For sensitive reports where you prefer not to use GitHub:

- **[security-besu@lists.hyperledger.org](mailto:security-besu@lists.hyperledger.org)** — reaches a
  subset of Besu maintainers and LF Decentralized Trust staff.

When reporting by email, include a description of the vulnerability and any relevant detail:
reproduction steps, affected versions, and any known active exploitation.

### How we handle reports

- Acknowledgement — we aim to acknowledge receipt within 5 business days.
- Triage — the security team assesses severity and impact. We will keep you informed of our assessment.
- Fix development — fixes are developed privately and applied to the tap formula.
- Release — the fix ships in an updated formula. We will notify you before release if possible.
- Disclosure — after a fix is available, we publish a GitHub Security Advisory with vulnerability
  details, affected versions, fix version, and reporter credit (with your consent).
- We do not publish vulnerability details before a fix is available.

For more detail on how the security team handles reports, see our
[Security Policy](https://github.com/besu-eth/besu/wiki/Security-Policy).
