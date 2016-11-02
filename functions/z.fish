# SYNOPSIS
#   z [options]
#
# USAGE
#   Options
#
function z -d "jump around"
  builtin cd (bash -c "source $Z_SCRIPT_PATH; _z $argv; echo \$PWD")
end
