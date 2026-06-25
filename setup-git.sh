#!/bin/bash

# Kimi Claw Workshop — Git Setup Script
# Run these commands in your terminal

echo "🔧 Setting up Git config..."

# Set your Git identity
git config --global user.name "ronak-kumar-sing"
git config --global user.email "ronakkumarsingh23@lpu.in"

# Verify
echo "✅ Git config set:"
git config --global user.name
git config --global user.email

echo ""
echo "📦 Now run these commands to push to GitHub:"
echo ""
echo "cd kimi-claw-workshop"
echo "git init"
echo "git add ."
echo 'git commit -m "Initial commit: Kimi Claw workshop"'
echo "git remote add origin https://github.com/ronak-kumar-sing/kimi-claw-workshop.git"
echo "git branch -M main"
echo "git push -u origin main"
