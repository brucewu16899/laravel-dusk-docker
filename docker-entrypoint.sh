#!/usr/bin/env bash
set -e

export DISPLAY_NUM="${DISPLAY_NUM:-99}";
export SCREEN_WIDTH="${SCREEN_WIDTH:-1440}";
export SCREEN_HEIGHT="${SCREEN_HEIGHT:-900}";
export CHROMEDRIVER_PORT="${CHROMEDRIVER_PORT:-9515}";

# Initialize screen resolution ENV value (it will be read by supervisord script)
export SCREEN_RESOLUTION="${SCREEN_WIDTH}x${SCREEN_HEIGHT}x24";

printenv;

exec "$@"
