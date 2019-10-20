# go-basic02 

Here we are building go app from different directory using Makefile.

## Cleaning the directories
```
make clean

```
## Building the target
```
make all

```
## Few initial things about go
Package imported and not used will throw error

Can't redeclare variables
```
var my_num int =1000// declaring int variable

var item1,item2 float64 = 9.99, 5.50
OR
item1,item2 := 9.99, 5.50
```
Can't reassign the values to constant. Variables can be reassigned.
```
const my_const int = 100 // my_const = 1000 will throw error
item1 = 10.01
```
## Type conversion
```
fmt.Println(item1 + item2*float64(myNum))
```
## Running the build
```
export GOPATH=/Users/arjun/go-prac
arjun-M-F2H4:go-prac arjun$ make clean
arjun-M-F2H4:go-prac arjun$ make all
I am parjun8840. This is simple make example
Going to build now. Initially only src directory is created. Current directory is: /Users/arjun/go-prac

Under build. PWD is: /Users/arjun/go-prac
/usr/local/go/bin/go run github.com/parjun8840/go-basic02
The time is:  2019-10-20 20:48:39.843258 +0530 IST m=+0.000081840
false
5510.01
100
sleep 1 

Print the directories under the source path:

/Users/arjun/go-prac/makefile
/Users/arjun/go-prac/src
```
Second time when run we can see more directories, make evaluates variables value before execution.
```
arjun-M-F2H4:go-prac arjun$ make all
I am parjun8840. This is simple make example
Going to build now. Initially only src directory is created. Current directory is: /Users/arjun/go-prac

Under build. PWD is: /Users/arjun/go-prac
/usr/local/go/bin/go run github.com/parjun8840/go-basic02
The time is:  2019-10-20 20:48:39.843258 +0530 IST m=+0.000081840
false
5510.01
100
sleep 1 

Print the directories under the source path:

/Users/arjun/go-prac/bin
/Users/arjun/go-prac/makefile
/Users/arjun/go-prac/pkg
/Users/arjun/go-prac/src
arjun-M-F2H4:go-prac arjun$ 
```
If you change the "go run" command to "go install" you will se bin/go-basic02 binary created with nothing printed.
```
arjun:parjun8840 arjun$ export GOPATH=/Users/arjun/go-prac
arjun:go-prac arjun$ export PATH=$PATH:$GOPATH/bin
arjun:go-prac arjun$ make clean
arjun:go-prac arjun$ make all
I am parjun8840. This is simple make example
Going to build now. Initially only src directory is created. Current directory is: /Users/arjun/go-prac

Under build. PWD is: /Users/arjun/go-prac
/usr/local/go/bin/go install github.com/parjun8840/go-basic02
sleep 1 

Print the directories under the source path:

/Users/arjun/go-prac/makefile
/Users/arjun/go-prac/src
arjun:go-prac arjun$ 

arjun:go-prac arjun$ go-basic02 
The time is:  2019-10-20 20:48:39.843258 +0530 IST m=+0.000081840
false
5510.01
100
```


