#
#!/bin/bash
#

# Close windows before launch
i3-msg "[instance=neofetch] kill" &
i3-msg "[instance=pacmixer] kill" &
i3-msg "[instance=gotop] kill" &

# Setup neofetch window
urxvt -name neofetch -e $SHELL -c "neofetch;$SHELL -i" &

# Setup pacmixer window
urxvt -name pacmixer -e $SHELL -c "pacmixer;$SHELL -i" &

# Setup gotop window
urxvt -name gotop -e $SHELL -c "gotop -p;$SHELL -i" &
