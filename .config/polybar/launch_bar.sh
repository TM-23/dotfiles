#
#!/bin/bash
#

# Kill all polybar processes
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

# Launch polybar, using default config localtion ~/.config/polybar/config
polybar -r boon &
