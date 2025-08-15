justfzf() {
    recipe="$(just --summary | tr ' ' '\n' | fzf)" || return
    just "$recipe" "$@"
}
