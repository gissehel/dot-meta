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
start-e_bash() {
    include-all-in-dir "${E_BASH_DIR}/functions"
    include-all-in-dir "${E_BASH_DIR}/aliases"
    include-all-in-dir "${E_BASH_DIR}/envvars"
    include-all-in-dir "${E_BASH_DIR}/includes"
}
