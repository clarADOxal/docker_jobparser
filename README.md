mkdir ./in  
mkdir ./out  
#put your *.job into ./in    

#Start Docker Desktop  
& "C:\Program Files\Docker\Docker\Docker Desktop.exe"

#Check  
docker info

#Build Docker  
docker build -t jobparser .

#run :  
docker run --rm -v .\in:/in -v .\out:/out jobparser -d /in > .\out\result.txt  

#Get results into ./out  
cd ./out
& Explorer .
notepad result.txt

