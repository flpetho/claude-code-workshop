Here's how to set up Claude Code on your computer. The steps differ slightly depending on whether you use Mac/Linux or Windows. 

Important:
You will have received an email from Jon Morrey "Welcome to Claude Code". That email contain your personal Claude Code key (AWS_BEARER_TOKEN_BEDROCK). Don't forward that email or the key to anyone else! Don't ever check the key into code. Do not attempt to use it for other Anthropic API access.

## Step 1: Set your environment variables

Check that you have Homebrew installed on your machine. In your terminal type:

`brew --version` 
 
If you have Homebrew installed, you should see a version number printed in the terminal. 

If you don't have Homebrew installed, you can install it from the Workforce App Store App. This will take a couple of minutes to install on your machine. After it is installed, quit the Terminal and reopen it. Check `brew --version` again to ensure it is installed correctly.

We also need to make sure you have node installed. You can check by typing:

`node --version`

If you don't have Node.js installed yet, you can get it from https://nodejs.org, or install via Mac Homebrew (brew install node) or Linux apt-get (sudo apt-get install nodejs npm). On Mac, you need to install via Homebrew to avoid permission errors.

Go to [nodejs.org](https://nodejs.org/en/download)

Download the macOS installer and follow the instructions to install Node.js on your machine.

After that is installed, you need to copy and paste this into your terminal:

```bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 24
# Verify the Node.js version:
node -v # Should print "v24.13.0".
# Verify npm version:
npm -v # Should print "11.6.2".
```

Quit terminal and restart it. 

Next, set your environment variables. These variables tell Claude Code how to connect to FamilySearch's instance of AWS Bedrock, which provides the Anthropic APIs.

Mac/Linux:
In your terminal:

`nano ~/.zshrc`

Create a new line and copy the information you see below from your "Welcome to Claude Code" email:

export AWS_BEARER_TOKEN_BEDROCK=[REDACTED]
export CLAUDE_CODE_USE_BEDROCK=1
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=16384
export MAX_THINKING_TOKENS=4092
export ANTHROPIC_MODEL=[REDACTED]
export ANTHROPIC_SMALL_FAST_MODEL=[REDACTED]

Once pasted, save the file by pressing `Ctrl+X`, then `Y`, and `Enter` to confirm.

Then restart your terminal.


## Step 2: Install Claude Code

In the same terminal:

```bash
npm install -g @anthropic-ai/claude-code
```

## Step 3: Run Claude Code

In the same terminal, to start Claude Code, open your terminal and create a new folder on your desktop to test:

```bash
cd ~/Desktop
mkdir claude-test
cd claude-test
claude
```

You'll first be asked whether to trust the files in that directory — select "1. Yes, proceed." If (instead) it asks you to create an Anthropic account, that means your environment variables above were not set correctly.

If you're in a code project, type /init as your first command. Claude Code will analyze your project and offer to create a CLAUDE.md file.

You can also launch Claude Code inside VS Code by opening the integrated terminal and typing "claude".

If you are struggling with the installation, paste this whole email into Copilot Chat for Enterprise (minus your personal Claude Code API key) and ask it for help. Make sure you tell it what OS you're using. After that, ask for help on the #claude-code Slack channel. There are over 500 people receiving licenses, so I simply don't have the bandwidth to support people individually. Thanks for your understanding!

After installation, I'd recommend searching YouTube for a "getting started" tutorial and skipping past the installation/setup instructions. Also, sign up for an internal Claude Code Bootcamp if you haven't already.

Happy Clauding!