export E_BASH_DIR=~/.config/e_bash
source-if-exist() {
    filename="$1"
    [ -f "${filename}" ] && . "${filename}"
}
include-all-in-dir() {
    dirname="$1"
    for filename in "${dirname}"/*
    do
        . "${filename}"
    done
}
e-bash-include-all() {
    dirname="$1"
    include-all-in-dir "${E_BASH_DIR}/${dirname}"
}
start-e_bash() {
    e-bash-include-all "functions"
    e-bash-include-all "aliases"
    e-bash-include-all "envvars"
    e-bash-include-all "includes"
}
