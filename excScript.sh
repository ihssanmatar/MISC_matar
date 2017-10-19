# replace Name with your name 

N=1 #starting the loop with N=1
for n in $(seq 1 5) #puting boundaries to the loop starting with 1 and ending with 5
do #ordering to start the loop and doing what is below and it is to create a directory in the name matar with n next to it as a number 
echo "matar replaced all the word name in this file "


mkdir matar${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd matar${n} #directing into the created directory
cp ../input.txt ./ #copying the input text into the file thatwe are on
cd ../ #going into the original file 
N=$(( $N + $n )) #the loop code adding 1 to the original big N Wwith n having boundaries
done #closing the loop
