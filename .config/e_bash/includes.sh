export E_INCLUDE_DIR="$E_BASH_DIR"/includes
for includefile in "$E_INCLUDE_DIR"/*
do
    . "${includefile}"
done
