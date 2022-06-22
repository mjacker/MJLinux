#!/bin/bash
for i in {0..107}
do
	echo -ne "\e[${i}m#${i} \e[0m"
done

#echo -e "\e[32m Color number #32. \e[0m"
#echo -e "\e[33m Color number #33. \e[0m"
#echo -e "\e[34m Color number #34. \e[0m"
#echo -e "\e[35m Color number #35. \e[0m"
#echo -e "\e[36m Color number #36. \e[0m"
#
# combination color
#echo -e "\e[1;33;4;44mYellow Underlined Text on Blue Background\e[0m"
echo "" #new line
echo "--------------------------------------------"
#Foreground
for clfg in {30..37} {90..97} 39 ; do
	#Background
	for clbg in {40..47} {100..107} 49 ; do
		#Formatting
			#Print the result
			echo -en "\e[0;${clbg};${clfg}m [0;${clfg};${clbg} | \e[0m"
		done
		echo #Newline
	done
 
exit 0
