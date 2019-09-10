error() {
  echo " !     $*" >&2
  exit 1
}

status() {
  echo "-----> $*"
}

indent() {
  c='s/^/       /'
  case $(uname) in
    Darwin) sed -l "$c";;
    *)      sed -u "$c";;
  esac
}