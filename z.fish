function init -a path --on-event init_z
  if test -z $Z_SCRIPT_PATH
    echo "Please install 'z' first!"; return 1
  end

  function z.check --on-variable PWD --description 'Setup z on directory change'
    status --is-command-substitution; and return

    bash -c "source $Z_SCRIPT_PATH; _z --add `pwd -P`"
  end

  function z
    cd (bash -c "source $Z_SCRIPT_PATH; _z $argv; echo \$PWD")
  end
end

