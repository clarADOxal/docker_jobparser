mkdir ./in
mkdir ./out
put your *.job into ./in

run :
docker run --rm `
   -v .\in:/in `
   -v .\out:/out `
   jobparser -d /in > .\out\result.txt

Get results into ./out
