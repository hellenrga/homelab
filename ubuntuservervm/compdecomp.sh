#! /bin/bash 
read -p "Enter the operation: 'compress' or 'decompress'" operation
case "$operation" in
        "compress")
                read -p "Name of file (.tar.gz)" file_out
                read -p "List of archives:" files
                tar -czf "$file_out" $files
                echo "Compressed succesfully at $file_out"
        ;;
        "decompress")
                read -p "Name of the file to decompress (.tar.gz)" file
                read -p "Directory of destiny" directory
                tar -xzf "$file" -C "$directory"
                echo "Decompressed succesfully at $directory"
        ;;
        *)
	echo "ERROR"
	echo "Please, select 'compress' or 'decompress'"
	exit 1
	;;
esac

