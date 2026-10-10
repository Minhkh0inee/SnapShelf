#!/bin/bash
set -e

command -v brew >/dev/null 2>&1 || { echo "Cần cài Homebrew trước."; exit 1; }
command -v swiftlint >/dev/null 2>&1 || brew install swiftlint

chmod +x .githooks/pre-commit
git config core.hooksPath .githooks

echo "Done: SwiftLint đã cài và pre-commit hook đã bật."