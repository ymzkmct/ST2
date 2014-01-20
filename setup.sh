#! /bin/sh

current=$(cd $(dirname $0) && pwd)
ST2="$HOME/Library/Application Support/Sublime Text 2"

for dir in *
do
  if [ "setup.sh" != "$dir" ]; then
    rm -r "$ST2/$dir"
    ln -s "$current/$dir" "$ST2/$dir"
  fi
done

