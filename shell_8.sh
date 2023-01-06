#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.
#run without arguments

## ./shell_8.sh "iron man"


str=$1
str="${str// /+}"
cmd=$(curl -s -H "A: B" "https://omdbapi.com/?apikey=5c02d8e&t=$str")  

error=$(echo "$cmd" | grep -o '"Error":"[^"]*' | grep -o '[^"]*$')

if [[ $error ]]
    then
        echo "Error - "$error
        exit 1;
fi

echo -ne "Movie Title: "
echo -ne $cmd | grep -o '"Title":"[^"]*' | grep -o '[^"]*$'

echo -ne "Intial year of Release: "
echo -ne $cmd | grep -o '"Year":"[^"]*' | grep -o '[^"]*$'

echo -ne "Plot: "
echo -ne $cmd | grep -o '"Plot":"[^"]*' | grep -o '[^"]*$'
