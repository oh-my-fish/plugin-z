function z -d "jump around"
  set -lx Z_SCRIPT_PATH (dirname (status -f))/../z/z.sh

  # Start a Bash process, source z, run the _z function, and capture the working directory and exit status.
  bash -c '
    source $Z_SCRIPT_PATH
    _z "$@" 2>&1
    Z_STATUS=$?
    echo "$PWD" >&2
    exit $Z_STATUS
  ' bash $argv 2>| read -l Z_PWD
  set -l Z_STATUS $status

  # If z changed directories, reflect that in the current process.
  if test $Z_PWD != $PWD
    builtin cd $Z_PWD
  end

  return $Z_STATUS
end
