function init -a path --on-event init_z
  if test -z $Z_SCRIPT_PATH
    echo "Please install 'z' first!"; return 1
  end
end
