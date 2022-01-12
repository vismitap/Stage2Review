a[1]="a) How many days do we have in a week? Options: 1: 7   2: 8   3: 5   4: 6"
a[2]="b) How many days do we have in a year (Not leap yr)? Options: 1: 300 2: 365  3: 5 4: 6"
a[3]="c) How many colors are there in a rainbow? Options: 1: 5 2: 8 3: 7 4: 6"
a[4]="d) Which animal is known as the ‘Ship of the Desert? Options: 1: Lion 2: Dog 3: Cat 4: Camel"

ans=(1 2 3 4)

points=0 

for i in ${ans[@]}
do 
  echo ${a[$i]}
  #printf "\n"
  read -p "Enter your choice: " ch
	if(( $ch==$i))
	then
	((points+=1))
	fi
	
done

echo  "Final score: " $points "/" ${#a[@]}
