clear
echo "Third letter included? (Y/N)"
read third
echo "Delay time?"
read delay
clear

while true ;
do
	INITIAL_JAMO=$(($RANDOM%19))
	MEDIUM_JAMO=$(($RANDOM%21))
	
	FINAL_JAMO=0
	if [[ $third == 'Y' ]] ; then
		FINAL_JAMO=$(($RANDOM%28))
	fi
	
	character=$((((($INITIAL_JAMO * 588) + ($MEDIUM_JAMO*28) + $FINAL_JAMO)+44032)))
	conversion=$(printf "%x\n" $character)
	printf "\u${conversion}"
	sleep $delay
	clear
done
