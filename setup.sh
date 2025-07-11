#!/bin/bash

# Quick setup script for mcp-curator
# This allows using the tool without global npm installation

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create an alias for the current session
alias mcp-curator="node $SCRIPT_DIR/bin/mcp-curator.js"

echo "✅ MCP Curator ready to use!"
echo ""
echo "You can now use: mcp-curator <command>"
echo ""
echo "To make this permanent, add this line to your ~/.zshrc or ~/.bashrc:"
echo ""
echo "alias mcp-curator='node $SCRIPT_DIR/bin/mcp-curator.js'"
echo ""
echo "Try: mcp-curator init"