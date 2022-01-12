read -p "Enter the lower limit: " a;
read -p "Enter the upper limit: " b;
k=0

for((i=$a;i<=$b;i++))
do 
flag=0
	if(( i==1 || i==0 ))
	then
	continue;
	fi

	for((j=2;j<=$((i-1));j++))
	do
		if(( i%j==0 ))
		then
		flag=1
		break
		fi
	done

	if((flag==0 ))
	then
		a[((k++))]=$i
	fi
done

echo ${a[@]}

