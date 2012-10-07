typeset -a programs
zstyle -a ':zoppo:plugin:alias' programs programs

for program ("$programs[@]")
  source-relative "aliases/$program" || print "alias: $program: program not found"

unset programs program

# vim: ft=zsh sts=2 ts=2 sw=2 et fdm=marker fmr={{{,}}}
