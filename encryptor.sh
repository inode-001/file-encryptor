select option in create mount unmount;do
     case $option in
       create)
        read -p  "Enter folder to encypt : " folder
        gocryptfs -init $folder
        exit  ;;
        

       mount)
         mkdir /tmp/files
         read -p "enter encrypted folder to open : " folder
         gocryptfs $folder /tmp/files
         exit ;;
        
        unmount)
             fusermount -u /tmp/files
             rm -r -d /tmp/files
             exit;;
     esac
done
