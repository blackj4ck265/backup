#!/bin/bash

dir=/home/blackj4ck/Pictures/wallpaper
images=($(find "$dir" -type f \( -iname "*.jpg" -o -iname "*.png" \)))

#creat index num
script_dir=$(dirname "$0")
images_index="$script_dir/images_index"
if [ -s "$images_index" ]; then
  img_num=$(cat "$script_dir/images_index")
else
  img_num=0
  echo "$img_num" >"$images_index"
fi

using_wpp="${images[$img_num]}"
#change hyprpaper
sed -i "s|^exec_always --no-startup-id feh --bg-fill .*|exec_always --no-startup-id feh --bg-fill $using_wpp|" ~/.config/i3/config
i3-msg restart

##hyprlock
#sed -i "s|^ *path *=.*|    path = $using_wpp|" ~/.config/hypr/hyprlock.conf
#

#change sddm background
cp "$using_wpp" /usr/share/sddm/themes/clairvoyance/Assets/Background.jpg

#save index num
img_num=$((img_num + 1))
echo "$img_num" >"$images_index"

#check if out of bounds
if [ "$img_num" -ge "${#images[@]}" ]; then
  img_num=0
  echo "$img_num" >"$images_index"
fi
