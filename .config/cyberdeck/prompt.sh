# CYBERDECK // prompt
# every command starts at the >> jack.

case $- in *i*)
  E=$(printf '\033')
  PS1="\[$E[31m\]\u\[$E[36m\]@\h \[$E[35m\]\w\n\[$E[36m\]>> \[$E[0m\]"
  ;;
esac
