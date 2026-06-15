# Deploy to Hostinger — Step by Step

Your site is built and ready. Choose one method below.

---

## Method 1: File Manager (Easiest)

**Time:** ~2 minutes. Best for first-time deployment.

### Steps

1. **Login to hPanel**
   - Visit https://hpanel.hostinger.com
   - Sign in with your account

2. **Go to File Manager**
   - Click **Hosting** in the left menu
   - Click **File Manager**

3. **Navigate to public_html**
   - You'll be in the root folder
   - Double-click the **public_html** folder to enter it

4. **Clear old files (if any)**
   - Select and delete any existing `index.html` or files
   - Leave public_html empty

5. **Upload your site**
   - Click the **Upload** button (top toolbar)
   - Select all files from your `dist/` folder:
     ```
     C:\Work\Active Projects\labproof-site\dist\
     ```
   - Select all contents (index.html, notes/, _astro/, etc.)
   - Click Upload

6. **Verify**
   - Wait for upload to complete
   - Visit https://labproof.tech
   - ✅ Your site is live!

---

## Method 2: FTP (Faster for updates)

**Time:** ~1 minute after setup. Better for future updates.

### Get FTP Credentials

1. Login to hPanel
2. **Hosting** → **FTP Accounts**
3. You'll see your main FTP account (usually `username@labproof.tech`)
4. Copy:
   - **Host:** `labproof.tech` or the IP shown
   - **Username:** (e.g., `ron_chow123`)
   - **Password:** (shown or reset if needed)

### Upload via FileZilla (Recommended)

1. **Download FileZilla** (free): https://filezilla-project.org/
2. **Enter credentials:**
   - Host: `labproof.tech`
   - Username: (from above)
   - Password: (from above)
   - Port: 21
   - Click **Connect**

3. **Navigate:**
   - Right side (Remote): Enter **public_html/**
   - Left side (Local): Open your `dist/` folder

4. **Upload:**
   - Select all files from `dist/`
   - Drag to right panel, or right-click → Upload
   - Wait for completion

5. **Verify:**
   - Visit https://labproof.tech
   - ✅ Live!

---

## Method 3: Command Line (Power users)

**Using the included script:**

1. Edit `deploy-ftp.bat`:
   - Replace `your-ftp-username` with your FTP username
   - Replace `your-ftp-password` with your FTP password

2. Run it:
   ```bash
   deploy-ftp.bat
   ```

3. Script uploads everything and confirms when done.

---

## Troubleshooting

### "403 Forbidden" or "Permission Denied"
- Make sure you're uploading to **public_html/** (not the parent folder)
- Delete old index.html first
- Try uploading via File Manager instead

### Site shows old version
- Clear your browser cache (Ctrl+Shift+Delete)
- Wait 5 minutes for DNS/CDN to refresh

### Upload is slow
- This is normal for large uploads
- FileZilla shows progress; be patient
- File Manager is slower — use FTP for large updates

### Files missing
- Check that you uploaded the **contents** of dist/, not the dist/ folder itself
- Should see: index.html, notes/, _astro/, favicon-32.png, etc. at the root

---

## After Deployment

### Next time you update:
1. Run `npm run build` locally
2. Upload new `dist/` contents to Hostinger
3. That's it — no need to delete old files (they're overwritten)

### To add a new note:
1. Create `src/content/notes/your-title.md`
2. Run `npm run build`
3. Upload `dist/` contents again

### Custom domain:
- labproof.tech is already pointed to Hostinger ✓
- No additional DNS setup needed

---

## Support

If you run into issues:
1. Check Hostinger's docs: https://support.hostinger.com/
2. Your FTP credentials are in **hPanel → Hosting → FTP**
3. File Manager is in **hPanel → Hosting → File Manager**

Your site is ready to go live. Choose a method above and upload!
