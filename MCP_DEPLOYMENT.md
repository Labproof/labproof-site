# Deploy via Hostinger MCP

Use the Hostinger API MCP to deploy your site programmatically.

## Quick Start

### Step 1: Build the site
```bash
npm run build
```

### Step 2: Start the MCP server (in one terminal)
```bash
npm run mcp
```

You'll see:
```
Initialized 30 tools
[INFO] MCP Server with HTTP streaming transport started successfully with 30 tools
[INFO] Listening on http://127.0.0.1:8100
```

### Step 3: Deploy (in another terminal)
```bash
npm run deploy
```

The deployment script will:
- ✅ Initialize the MCP connection
- ✅ List available tools
- ✅ Upload all files from `dist/`
- ✅ Report progress
- ✅ Verify deployment

### Step 4: Verify
Visit https://labproof.tech to see your live site.

---

## What Happens During Deployment

1. **Initialize MCP** — Connects to Hostinger API
2. **Authenticate** — Uses your API token
3. **List Tools** — Shows all 30 available Hostinger tools
4. **Upload Files** — Transfers dist/ contents to public_html/
5. **Report Results** — Shows what was deployed

---

## How It Works

The script:
- Runs the Hostinger MCP server in HTTP mode on port 8100
- Makes JSON-RPC 2.0 requests to deploy files
- Uses your Hostinger API token for authentication
- Uploads each file from dist/ to your hosting account

---

## Troubleshooting

**"MCP server is not running"**
- Make sure you ran `npm run mcp` in another terminal first
- The server must be running before you run `npm run deploy`

**"Connection refused"**
- Check that port 8100 is not blocked
- Make sure the MCP server is listening on 127.0.0.1:8100

**"Authentication failed"**
- Verify your API token is correct
- Check it hasn't expired in hPanel

**Upload is slow**
- This is normal for first deployment (~30-60 seconds)
- Subsequent deployments are faster

---

## For Future Updates

Every time you make changes:

```bash
# 1. Rebuild
npm run build

# 2. In terminal 1: Start MCP server
npm run mcp

# 3. In terminal 2: Deploy
npm run deploy

# 4. Visit https://labproof.tech
```

---

## The 30 Hostinger Tools Available

Through the MCP, you have access to tools for:
- File management (upload, delete, organize)
- Domain configuration
- DNS management
- Email setup
- Backup/restore
- Performance monitoring
- VPS management
- And more...

Check `npm run deploy` output for the full list.

---

**Deployment is complete when you see:**
```
✨ Deployment successful! Your site is live.
```
