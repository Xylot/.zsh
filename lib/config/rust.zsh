export CARGO_HOME="${CARGO_HOME:-$XDG_DATA_HOME/cargo}"
export RUSTUP_HOME="${RUSTUP_HOME:-$XDG_DATA_HOME/rustup}"

path=(
    $CARGO_HOME/bin(N)
    $path
)
