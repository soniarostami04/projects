
# 🔐 Cryptography Walkthrough – NCL Spring 2025

## 🛠️ Tools & Scripts Used:
- Python (custom Caesar cipher & XOR decoder)
- CyberChef
- Online tools: dcode.fr, cryptii.com
- Manual decryption logic

## 🧪 Objective:
Decode encrypted strings and files using common cryptographic methods including Caesar, Base64, XOR, and simple substitution ciphers.

## 🧭 Process:

### 1. Caesar Cipher Decryption
- Received an alphabetic string suspected to be Caesar shifted
- Used a Python script to brute force all 25 shifts and output readable candidates

```python
def caesar_crack(text):
    for i in range(1, 26):
        result = ''.join(
            chr((ord(char) - ord('a') - i) % 26 + ord('a')) if char.isalpha() else char
            for char in text.lower()
        )
        print(f"Shift {i}: {result}")
```

### 2. Base64 & Hex Decoding
- Detected Base64 strings with padding (`==`)
- Used CyberChef or base64 decode function to convert to readable text

### 3. XOR Encrypted Message
- Attempted XOR brute force by analyzing repeating key length and character frequency
- Decoded simple byte-level XOR using CyberChef's "XOR Brute Force" operation

### 4. Substitution Cipher
- Used frequency analysis to match common English letter usage
- Leveraged dcode.fr's substitution solver to auto-match letter positions

---

## ✅ Solved Examples:
- `"Uifsf jt b tfdsfu nfttbhf"` → **"There is a secret message"** (Caesar shift -1)
- `cGFzc3dvcmQ=` → **"password"** (Base64)
- `736563726574` → **"secret"** (Hex)
- XOR-obfuscated string → revealed file path for the next challenge

---

## 💡 Lessons Learned:
- Caesar and Base64 are easy to break with scripting and logic
- CyberChef is a fast, powerful tool for encoding/decoding analysis
- Pattern recognition and frequency analysis are key to substitution cracking

> “Good encryption hides data. Great cryptanalysts find it.” 🔍🔐
