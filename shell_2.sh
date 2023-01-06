#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.

sed -e  "s/[^A-Za-z']/ /g" input.txt | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | sort -rn