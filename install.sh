#!/bin/bash

REPO_DIR="$(cd "$(dirname "$0")" && pwd)";
FUNCTIONS_FILE="$REPO_DIR/git-functions.sh";
SOURCE_LINE="source $FUNCTIONS_FILE"

SHELL_RC="$HOME/.bashrc";
if [[ "$SHELL" == *"zsh" ]]; then
  SHELL_RC="$HOME/.zshrc";
fi

if ! grep -Fxq "$SOURCE_LINE" "$SHELL_RC"; then
  echo "$SOURCE_LINE" >> "$SHELL_RC"
  echo "✅ Added: $SOURCE_LINE a $SHELL_RC"
else
  echo "ℹ️ Source is already added in: $SHELL_RC"
fi


git config --global alias.feat "!$SOURCE_LINE && jiraCommit feat"
git config --global alias.fix "!$SOURCE_LINE && jiraCommit fix"
git config --global alias.test "!$SOURCE_LINE && jiraCommit test"
git config --global alias.chore "!$SOURCE_LINE && jiraCommit chore"
git config --global alias.refactor "!$SOURCE_LINE && jiraCommit refactor"
