if [ -z "$SUDO_USER" ]; then
  echo "Error: run with sudo" >&2
  exit 1
fi

rm -rf /root/.config/{nvim,ranger}
mkdir -p /root/.config

ln -s "/home/$SUDO_USER/.config/nvim"   /root/.config/nvim
ln -s "/home/$SUDO_USER/.config/ranger" /root/.config/ranger
