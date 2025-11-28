#!/usr/bin/env bash
# make-bash-stack-scripts-executable.sh
# Adds +x to all core Bash-Stack scripts

echo "Adding execute permissions to core Bash-Stack scripts..."

# Make main scripts executable
chmod +x start.sh
chmod +x core.sh
chmod +x config.sh

# Make all page scripts executable
if [ -d pages ]; then
  chmod +x pages/*.sh
fi

echo "Done! All Bash-Stack scripts are now executable."
