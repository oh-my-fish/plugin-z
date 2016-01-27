function z.check --on-variable PWD --description 'Setup z on directory change'
   status --is-command-substitution; and return
   bash -c "source $Z_SCRIPT_PATH; _z --add `pwd -P`"
end
