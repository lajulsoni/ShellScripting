
# Read the all files in a user given directory recursively.

user_path=$1
recursive() 
{
path=$1
    for file in ${path}* 
	do
	        if [ -d "$file" ]; 
		then
		echo "$file is a directory "
        	    recursive $file/
        	else
       		     printf '%s\n' "$file is a file "
       		 fi
        
    done
}

recursive $user_path
