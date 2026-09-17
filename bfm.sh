#uncomment next line for backups dev use only
cp ./bfm.sh ./bfmbak.sh
VERSION="1.5"
echo "welcome to bfm version $VERSION!!!, $USER"
sleep .2
while true ; do
DIRECTORY=$("pwd")
echo "$DIRECTORY"
echo "[1] go to a dir"
echo "[2] quit"
echo "[3] create a new dir"
echo "[4] make a new file"
echo "[5] read a file"
echo "[6] list files in the current dir"
read -r -p "Choice: " CHOICE
case "$CHOICE" in
   1)
      clear
      echo "which dir do you want to go to"
      read -r -p "dir: " DIR
      cd "$DIR"
      ;;

   2)
     exit 0
     ;;
   3)
     clear
     read -r -p "name and place?" CR
     mkdir -p "$CR"
     echo "dir has been created"
     ;;
   4)
     clear
     read -r -p "file name??" NME
     touch "$NME"
     echo "$NME has been created"
     ;;
   5)
     clear       
     echo "which file to read??"
     read -r -p "name: " READ
     cat "$READ"
     ;;
   6)
     clear
     read -r -p "enter to continue... or type flags: " GOOD
     if [ "$GOOD" = "linux" ]; then
          read -r -p "which commands would you like to add?" OK
         eval "ls $OK"
     else
          ls
     fi
     ;;
    clear)
          clear
          ;;
    exit)
         exit 0
         ;;
esac
done     

