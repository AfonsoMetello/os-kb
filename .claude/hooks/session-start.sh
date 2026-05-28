#!/usr/bin/env bash
# OS-KB session-start hook.
# Always emit the banner. If kb/ has no curated content yet, append a bootstrap notice.

BANNER=".claude/banner.txt"

[ -f "$BANNER" ] || exit 0

if [ -n "$(find kb -type f -name '*.md' ! -name '_*' -print -quit 2>/dev/null)" ]; then
  jq -Rs '{systemMessage: ("\n" + .)}' < "$BANNER"
else
  jq -Rs --arg notice $'\n\n[OS-KB] kb/ has no curated content yet. See README.md > Quickstart to bootstrap from upstream.' \
    '{systemMessage: ("\n" + . + $notice)}' < "$BANNER"
fi
