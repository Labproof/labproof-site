# Quick Deploy to Hostinger

Your site is built. Deploy it in 60 seconds.

---

## 🚀 Option 1: PowerShell Script (Recommended)

**Run this from PowerShell:**

```powershell
cd C:\Work\Active Projects\labproof-site
.\Deploy-to-Hostinger.ps1
```

**The script will ask for:**
- FTP username (from hPanel → Hosting → FTP)
- FTP password

**Then it uploads everything automatically.**

✅ When done, visit https://labproof.tech

---

## 🔑 Get Your FTP Credentials

1. Login to **hPanel** → https://hpanel.hostinger.com
2. Click **Hosting** (left menu)
3. Scroll down to **FTP Accounts**
4. You'll see your main account:
   - Host: `labproof.tech`
   - Username: (looks like `username@labproof.tech` or just `username`)
   - Password: (your FTP password)

---

## ⚡ Alternative: Manual File Manager

If you prefer not to run scripts:

1. Go to **hPanel → Hosting → File Manager**
2. Navigate to **public_html/**
3. Click **Upload**
4. Select all files from `C:\Work\Active Projects\labproof-site\dist\`
5. Upload

This takes ~2 minutes but is very straightforward.

---

## ✅ Verify Deployment

After upload:
1. Visit **https://labproof.tech**
2. You should see your homepage
3. Click "Read notes" to verify notes page works
4. Try clicking a note to see individual article pages

---

## 🔄 Future Updates

Every time you add a note or make changes:

```powershell
npm run build
.\Deploy-to-Hostinger.ps1
```

Your site updates in <1 minute.

---

## ❓ Troubleshooting

**"dist folder not found"**
- Make sure you ran `npm run build` first

**"FTP connection failed"**
- Check username/password
- Make sure it's the correct FTP account (not your hPanel password)

**Site shows old version**
- Clear browser cache (Ctrl+Shift+Delete)
- Wait 5 minutes for DNS refresh

**Upload hangs**
- Check your internet connection
- Try the manual File Manager method instead

---

Ready? Run the PowerShell script:

```powershell
.\Deploy-to-Hostinger.ps1
```
