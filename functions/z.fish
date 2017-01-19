# SYNOPSIS
#   z [options]
#
# USAGE
#   Options
#
function z -d "jump around"
  set -l escaped (echo $argv | sed -E "s/\'/\\\'/g")
  builtin cd (bash -c "source $Z_SCRIPT_PATH; _z $escaped; echo \$PWD")
end
