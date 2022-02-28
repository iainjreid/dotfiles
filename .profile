# This profile emulates the system level profile, in that (give or take) it's
# split into domain specific parts which are then loaded in a given order.

for file in "$HOME"/.config/profile.d/*.sh; do
  [ -r "$file" ] && . "$file"
done

unset file
