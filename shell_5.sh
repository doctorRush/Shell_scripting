#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.
#run without argumnets
## Program for encyrption
###shell_5.sh

algo=false
text=false
length=false

input_string=$1;

if [[ $1 == --* ]]
   then  
      echo "Please enter text that needs to be encrypted."
      exit 1
fi

while (( $# >= 1 )); do 
    case $1 in
    --algo) algo=true;;
    --text) text=true;;
    --length) length=true;;
    esac;
    shift
done

random_number=$((1 + $RANDOM % 4))

case "${random_number}" in
   1) echo -ne "Encrypted password: " 
      echo -ne $input_string | sha1sum | awk '{print $1}'
      algorithm_name="SHA1";;
   2) echo -ne "Encrypted password: "
      echo -ne $input_string | sha256sum| awk '{print $1}'
      algorithm_name="SHA256";;
   3) echo "Encrypted password: "
      echo -ne $input_string | sha512sum | awk '{print $1}'
      algorithm_name="SHA512";;
   4) echo -ne "Encrypted password: "
      echo -ne $input_string | md5sum | awk '{print $1}'
      algorithm_name="MD5";;
   *) break;
   esac;

if [[ $algo = true ]]
   then
      echo "Algorithm Name: $algorithm_name"
fi

if [[ $text = true ]]
   then
      echo "Text passed: $input_string"
fi

if [[ $length = true ]]
   then
      echo "length true"

      echo "Length of Password/String: ${#input_string}"
fi
