
# 🔓 Password Cracking Walkthrough – NCL Spring 2025

## 🛠️ Tools Used:
- John the Ripper (Kali Linux)
- CrackStation.net
- Hash-Identifier (hash-id)

## 🧪 Objective:
Crack a series of hashed passwords using a combination of dictionary-based techniques and online hash lookup tools.

## 🧭 Process:

### 1. Hash Identification
Used `hash-identifier` (or `hashid`) to classify unknown hashes by their format.

**Sample Input:**
```
$ hashid
5f4dcc3b5aa765d61d8327deb882cf99
```

**Detected Type:**
- MD5

### 2. Crack Using John the Ripper
Saved all hashes to a file called `hashes.txt`, then ran:

```
john --wordlist=/usr/share/wordlists/rockyou.txt hashes.txt
```

Used `john --show hashes.txt` to verify results.

### 3. Quick Lookup with CrackStation
For known hashes or quick tests, submitted directly at [https://crackstation.net](https://crackstation.net)

---

## ✅ Cracked Hash Samples

| Hash                                      | Method | Cracked Password |
|-------------------------------------------|--------|------------------|
| 5f4dcc3b5aa765d61d8327deb882cf99           | MD5    | password         |
| 25d55ad283aa400af464c76d713c07ad           | MD5    | 12345678         |
| d8578edf8458ce06fbc5bb76a58c5ca4           | MD5    | qwerty           |
| 5ebe2294ecd0e0f08eab7690d2a6ee69           | MD5    | secret           |
| 81dc9bdb52d04dc20036dbd8313ed055           | MD5    | 1234             |

---

## 💡 Lessons Learned
- MD5 is fast and weak — never use it for securing passwords
- Dictionary attacks using real-world lists (like `rockyou.txt`) are highly effective
- Salting passwords prevents fast offline cracking and rainbow table attacks

