if [ -n "$DESKTOP_SESSION" ]; then
  eval $(gnome-keyring-daemon --start --components=ssh)
  export SSH_AUTH_SOCK
fi
