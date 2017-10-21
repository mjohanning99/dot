config.load_autoconfig()
config.bind(',vlc', 'hint --rapid links spawn vlc --no-video-deco {hint-url}') #Start video in VLC
config.bind(',music', 'hint --rapid links spawn vlc --vout none {hint-url}') #Start video in VLC (no video output for music)
config.bind(',d', 'hint --rapid links download {hint-url}') #Download hinted URL

