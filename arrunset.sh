declare -a toys=("teddybear" "panda" "pinkpanther" "doremon" "pokemon")
unset toys[1]
echo ${toys[@]}
