#!/bin/sh

exec xautolock -detectsleep 
  -time 3 -locker "i3lock -i ~/Imágenes/Wallpapers/WPLS.png -k --ringcolor=000000 --insidecolor=77777755 --timecolor=dddddd --datecolor=dddddd --ra    dius 30 --datepos="100:100" --timepos="100:50" --indpos="230:75" --ring-width 3 --veriftext="" --keyhlcolor=ffffff99" \
  -notify 30 \
  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
