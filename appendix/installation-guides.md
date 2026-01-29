# Complete Installation Guide

This guide provides comprehensive installation and authentication instructions for Claude Code. For quick reference during the workshop, see [Installation Reference](../resources/installation-reference.md).

## Prerequisites

- macOS 12.0 or later (recommended)
- Terminal access
- AWS Bedrock access (provided by FamilySearch)

## Installation Methods

### Method 1: Official Installer (Recommended)

1. Download Claude Code from https://claude.com/code
2. Open the downloaded installer
3. Follow installation prompts
4. Restart terminal

Verify installation:
```bash
claude --version
```

### Method 2: Homebrew (For Advanced Users)

```bash
brew tap anthropics/claude
brew install claude-code
```

## Authentication Methods

FamilySearch uses AWS Bedrock for Claude Code access. Choose one authentication method:

### Method A: Bearer Token (Simplest)

**Get your token**:
1. Contact your IT administrator
2. Receive bearer token string

**Configure**:
```bash
export ANTHROPIC_AUTH_TOKEN="your-bearer-token-here"
```

**Make permanent** (add to `~/.zshrc` or `~/.bash_profile`):
```bash
echo 'export ANTHROPIC_AUTH_TOKEN="your-token"' >> ~/.zshrc
source ~/.zshrc
```

### Method B: AWS Access Keys

**Get your keys**:
1. AWS Console → IAM → Your user
2. Security credentials tab
3. Create access key
4. Save Access Key ID and Secret Access Key

**Configure**:
```bash
aws configure
```

Enter:
- AWS Access Key ID: [your key]
- AWS Secret Access Key: [your secret]
- Default region: us-east-1
- Default output format: json

### Method C: Browser Authentication

**For personal use** (not corporate):

```bash
claude --auth
```

Follow browser prompts to authenticate with Anthropic account.

## Troubleshooting

### "Command not found: claude"

**Solution 1**: Restart terminal
**Solution 2**: Check PATH
```bash
echo $PATH
```

Should include `/usr/local/bin` or similar

**Solution 3**: Reinstall

### "Authentication failed"

**Check credentials**:
```bash
# For bearer token
echo $ANTHROPIC_AUTH_TOKEN

# For AWS keys
aws sts get-caller-identity
```

**Refresh credentials**: Contact IT if expired

### "Connection timeout"

**Check network**:
- Behind corporate firewall?
- VPN required?
- Proxy settings correct?

**Contact IT** for network access

## Updating Credentials

See [Updating Credentials](../resources/updating-credentials.md) for maintenance procedures.

## Platform-Specific Notes

### macOS

Claude Code works best on macOS. No additional setup needed.

### Linux

Installation requires additional dependencies. See platform documentation.

### Windows

Use WSL (Windows Subsystem for Linux) for best experience.

## Corporate Environment

**FamilySearch specific**:
- Use corporate AWS Bedrock access
- VPN may be required
- Contact IT for credentials
- Bearer token expires periodically

## Support

- **Installation issues**: Contact FamilySearch IT
- **Usage questions**: Workshop instructor or Slack
- **Bug reports**: https://github.com/anthropics/claude-code/issues

---

*For workshop participants: You completed this during pre-workshop setup. This guide is for reference only.*
