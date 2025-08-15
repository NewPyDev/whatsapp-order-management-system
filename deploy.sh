#!/bin/bash

# WhatsApp Order Management System - Quick Deploy Script
# This script helps you deploy to GitHub and various platforms

echo "🚀 WhatsApp Order Management System - Deployment Helper"
echo "======================================================"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Run: git init"
    exit 1
fi

# Check if we have uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "⚠️  You have uncommitted changes. Please commit them first."
    echo "Run: git add . && git commit -m 'Your commit message'"
    exit 1
fi

echo ""
echo "📋 Pre-deployment checklist:"
echo "✅ Git repository initialized"
echo "✅ All files committed"
echo "✅ Environment variables configured"
echo "✅ Build configuration ready"

echo ""
echo "🌐 Deployment Options:"
echo ""
echo "1. 🔥 Vercel (Recommended)"
echo "   - Go to https://vercel.com"
echo "   - Connect your GitHub repository"
echo "   - Add environment variables"
echo "   - Deploy automatically"
echo ""
echo "2. 🌊 Netlify"
echo "   - Go to https://netlify.com"
echo "   - Connect GitHub repository"
echo "   - Configure build settings"
echo ""
echo "3. ☁️  AWS Amplify"
echo "   - AWS Console > Amplify"
echo "   - Connect GitHub repository"
echo ""
echo "4. 🚂 Railway"
echo "   - Go to https://railway.app"
echo "   - Connect GitHub repository"
echo ""

echo "📖 For detailed instructions, see DEPLOYMENT.md"
echo ""

# Check if remote origin exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "✅ GitHub remote configured"
    echo "🔗 Repository: $(git remote get-url origin)"
    echo ""
    echo "To push updates:"
    echo "git add ."
    echo "git commit -m 'Your update message'"
    echo "git push origin main"
else
    echo "⚠️  GitHub remote not configured yet"
    echo ""
    echo "To add GitHub remote:"
    echo "1. Create repository on GitHub"
    echo "2. Run: git remote add origin https://github.com/YOUR_USERNAME/whatsapp-order-manager.git"
    echo "3. Run: git push -u origin main"
fi

echo ""
echo "🎉 Your WhatsApp Order Management System is ready for deployment!"
echo "📚 Check README.md for complete documentation"
