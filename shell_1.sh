###shell_1.sh "Suzuki is the best"
vars=($1)
size=${#vars[@]}
firstWord=`echo ${vars[0],,} | rev`
echo -ne ${firstWord^}' '
for((i=1;i<size;i++))
do
revstr=`echo ${vars[i]} | rev`
echo -ne ${revstr}' '
done