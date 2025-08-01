#!/bin/bash

# post-breakup.sh
# A Git hook for processing emotional damage after relationship changes
# Usage: ./hooks/post-breakup.sh

echo "Executing post-breakup hook..."
echo "🩹 Processing emotional damage..."

# Stash tears for later processing
echo "Stashing tears..."
git stash push -m "tears: $(date) - emotional damage detected"
echo "Tears stashed. You'll cry later."

# Remove shared memories
echo "Removing shared memories..."
if [ -d "./memories" ]; then
    rm -rf ./memories/*
    echo "Deleted shared memories. Disk space reclaimed."
else
    echo "No memories directory found. Creating empty one..."
    mkdir -p ./memories
fi

# Update emotional state
echo "Updating emotional state..."
echo "$(date): Breakup processed" >> emotional_log.txt
echo "Emotional damage logged."

# Suggest commit message
echo ""
echo "Suggested commit message: 'chore: moved on (barely)'"
echo "Alternative options:"
echo "  - 'fix: removed toxic relationship from life'"
echo "  - 'feat: added emotional damage to portfolio'"
echo "  - 'docs: updated .gothubignore with new trauma'"

# Send notification
if command -v notify-send &> /dev/null; then
    notify-send "Breakup complete" "Time to update your .gothubignore."
    echo "Notification sent."
else
    echo "Notification system not available. You'll have to process this manually."
fi

# Emotional support message
echo ""
echo "💔 Breakup hook completed."
echo "Remember:"
echo "  - It's okay to not be okay"
echo "  - Healing takes time"
echo "  - Your worth is not defined by relationships"
echo "  - Consider running 'make cry' for emotional processing"
echo "  - Don't forget to hydrate (tears don't count)"

# Check if .gothubignore needs updating
if [ -f ".gothubignore" ]; then
    echo ""
    echo "Checking .gothubignore for updates..."
    echo "Consider adding new emotional patterns to ignore:"
    echo "  - Their contact info"
    echo "  - Shared photos"
    echo "  - Anniversary reminders"
    echo "  - Future plans that are no longer relevant"
else
    echo ""
    echo "⚠️  .gothubignore not found. Consider creating one to protect your emotional state."
fi

echo ""
echo "Hook execution complete. Take care of yourself. 💙" 