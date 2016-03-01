#!/bin/sh
set -e
help(){
  echo "$1: Uses gcc and objconv to convert a .O program to NASM and to executable once more"
  echo "usage: $1 <sourcefile>"
  exit 0
}
[ -z "$1" ] || [ "$1" == "-h" ] && help "$(dirname "$0")"

OBJCONV_EXEC="/home/menoobs/workspace/virus_detection/objconv/source/objconv"  #please  change this to point to you path
INPUT_FILE="$1"
NASM_FILE="$INPUT_FILE.NASM"
NASM_O_FILE="$NASM_FILE.o"
FINAL_EXEC_FILE="$INPUT_FILE.run"
$OBJCONV_EXEC -fnasm "$INPUT_FILE" "$NASM_FILE"
sed -i 's|st(0)|st0  |g' "$NASM_FILE"
sed -i 's|noexecute|         |g' "$NASM_FILE"
sed -i 's|execute|       |g' "$NASM_FILE"
sed -i 's|: function||g' "$NASM_FILE"
sed -i 's|?_|L_|g' "$NASM_FILE"
sed -i -n '/SECTION .eh_frame/q;p' "$NASM_FILE"
sed -i 's|;.*||g' "$NASM_FILE"
sed -i 's/^M//g' "$NASM_FILE"
sed -i 's|\s\+$||g' "$NASM_FILE"
sed -i 's|align=1||g' "$NASM_FILE"
echo 'NASM file generated in '"$NASM_FILE"
nasm -f elf64 -o "$NASM_O_FILE" "$NASM_FILE"
gcc -lm -o "$FINAL_EXEC_FILE"  "$NASM_O_FILE"   #install libgl1-mesa-dev if you want to link with -lGL as well
echo 'Successfully compiled '"$NASM_FILE" to "$FINAL_EXEC_FILE"

