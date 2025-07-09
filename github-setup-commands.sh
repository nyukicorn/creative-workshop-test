#!/bin/bash

# GitHub リポジトリ作成後に実行するコマンド
# あなたのGitHubユーザー名に置き換えてください

USERNAME="your-github-username"  # ←あなたのユーザー名に変更

echo "Setting up remote repository..."
git remote add origin https://github.com/${USERNAME}/creative-workshop-test.git
git branch -M main
git push -u origin main

echo "Repository setup complete!"
echo "Next: Configure Secrets in GitHub repository settings"