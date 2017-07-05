#!/usr/bin/env bash

if [ -z ${EASTERN_STATE_BUCKET+x} ]; then
  echo "$(date) - Not using eastern_state"
else
  echo "$(date) - Installing environment variables using eastern_state - $EASTERN_STATE_ENV"
  source <(eastern_state load_environment "$EASTERN_STATE_BUCKET" "$EASTERN_STATE_NAME" "$EASTERN_STATE_ENV")
fi

"$@"
