
# 🌐 Open Source Intelligence (OSINT) Walkthrough – NCL Spring 2025

## 🛠️ Tools & Platforms Used:
- Google Dorking
- whois / nslookup
- reverse image search (Google, TinEye)
- Emailrep.io
- Maltego (local setup)

## 🧪 Objective:
Gather intelligence on individuals and domains using public data sources, search engines, metadata, and online reconnaissance tools.

## 🧭 Process:

### 1. Domain & WHOIS Lookup
Used `whois` and `nslookup` to gather registrar info and IP data for domains mentioned in the challenge.

```
whois example.com
nslookup example.com
```

Identified:
- Registrar
- Contact emails
- DNS hosting provider
- Last updated date

### 2. Email Reputation & Metadata
Queried suspicious emails using:
- [emailrep.io](https://emailrep.io/)
- Google search (e.g., `"email@example.com"`)

Used results to determine credibility, past breaches, and activity history.

### 3. Reverse Image Search
- Submitted suspect profile pictures or logos to TinEye and Google Images
- Traced one image to a blog post that matched timeline of challenge events

### 4. Google Dorking
Performed advanced searches to uncover sensitive directories, indexed credentials, and login pages.

Examples:
```
site:example.com inurl:login
site:pastebin.com "password"
filetype:pdf site:*.gov confidential
```

---

## ✅ Key Findings:
- Discovered exposed admin panel using Google Dork
- Identified breach history and social media links tied to challenge actors
- Verified image reposts and metadata locations

---

## 💡 Lessons Learned:
- OSINT is incredibly powerful when paired with critical thinking
- Metadata and image context often tell a deeper story than surface content
- Never underestimate a well-formed Google query

