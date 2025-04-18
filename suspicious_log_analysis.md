
# 📜 Log Analysis Walkthrough – NCL Spring 2025

## 🛠️ Tools Used:
- Linux terminal (grep, awk, less)
- SIEM-style log viewer (provided in challenge)
- Spreadsheet (CSV parsing)
- Python for pattern matching

## 🧪 Objective:
Analyze log files to detect suspicious login attempts, brute-force behavior, unauthorized access, and insider threats.

## 🧭 Process:

### 1. Initial Exploration
- Opened `.log` and `.csv` files using `less` and `awk` for quick inspection
- Checked timestamps, usernames, and event types

### 2. Grep for Patterns
Used `grep` to find anomalies:
```bash
grep "Failed password" auth.log
grep "root" /var/log/auth.log
```
Filtered login attempts by IP and usernames.

### 3. Count-Based Analysis
Used `awk` and `sort` to identify brute-force attacks:
```bash
cat auth.log | grep "Failed password" | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr
```
Identified top offending IPs.

### 4. Insider Threat Clues
- Reviewed file access logs showing abnormal access at odd hours
- Flagged unusual file path access (e.g., `/admin/secret.zip`)

### 5. Timeline Construction
- Built a timeline of events across multiple logs
- Tracked the user “jdoe” logging in after-hours and attempting privilege escalation

---

## ✅ Key Findings:
- Multiple brute-force login attempts from IP: `192.168.1.200`
- Insider accessed restricted archive outside business hours
- Suspect account used known weak password (reused elsewhere in challenge)

---

## 💡 Lessons Learned:
- Logs tell stories—if you know what to look for
- Timestamps, frequency, and unusual access paths are key indicators
- Simple CLI tools like `grep`, `awk`, and `sort` are powerful in triage

