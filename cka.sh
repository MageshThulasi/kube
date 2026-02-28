#!/bin/bash

ACTION="$1"
LAB="$2"

# Validate input
if [[ -z "$ACTION" || -z "$LAB" ]]; then
  echo "Usage:"
  echo "  $0 setup <lab-number>"
  echo "  $0 validate <lab-number>"
  echo "  $0 question <lab-number>"
  echo "  $0 solution <lab-number>"
  exit 1
fi

# Make script location independent
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="${SCRIPT_DIR}/cka-practice/${LAB}"

case "$ACTION" in
  setup)
    SCRIPT="${BASE_DIR}/setup.sh"
    EXECUTE=true
    ;;
  validate)
    SCRIPT="${BASE_DIR}/validate.sh"
    EXECUTE=true
    ;;
  solution)
    SCRIPT="${BASE_DIR}/solution.sh"
    EXECUTE=true
    ;;
  question)
    SCRIPT="${BASE_DIR}/question.sh"
    EXECUTE=false
    ;;
  *)
    echo "Invalid action: $ACTION"
    echo "Valid actions: setup | validate | question | solution"
    exit 1
    ;;
esac

# Check if file exists
if [[ ! -f "$SCRIPT" ]]; then
  echo "Error: $SCRIPT does not exist"
  exit 1
fi

# If question → just print contents
if [[ "$EXECUTE" = false ]]; then
  cat "$SCRIPT"
  exit 0
fi

# Otherwise execute script
if [[ ! -x "$SCRIPT" ]]; then
  chmod +x "$SCRIPT"
fi

exec "$SCRIPT"
