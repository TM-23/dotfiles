#
#!/bin/bash
#

# Setup neofetch window
urxvt -name neofetch -e $SHELL -c "neofetch;$SHELL -i" &

# Setup pacmixer window
urxvt -name pacmixer -e $SHELL -c "pacmixer;$SHELL -i" &

# Setup gotop window
urxvt -name gotop -e $SHELL -c "gotop -p;$SHELL -i" &
