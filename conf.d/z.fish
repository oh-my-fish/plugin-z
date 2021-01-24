function z.pwd --on-variable PWD
  status --is-command-substitution
    and return

  z --add $PWD
end
