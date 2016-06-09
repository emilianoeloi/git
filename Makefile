.PHONY: java c cpp cs py php vb js asm rb pl objc swift go clear

all: java c cpp cs py php vb js asm rb pl objc swift go clear

setup:
	brew install coreutils
	brew install golang

java:
	@./runner.sh "Java" "Compile" "HelloWorld" "javac HelloWorldApp.java"
	@./runner.sh "Java" "Run" "HelloWorld" "java HelloWorldApp"
	@./runner.sh "Java" "Compile" "Arithmetic" "javac Arithmetic.java"
	@./runner.sh "Java" "Run" "Arithmetic" "java Arithmetic"

c:
	@./runner.sh "C" "Compile" "HelloWorld" "clang -o helloWorld1App HelloWorldApp.c"
	@./runner.sh "C" "Run" "HelloWorld" "./helloWorld1App"
	@./runner.sh "C" "Compile" "Arithmetic" "clang -o Arithmetic1 Arithmetic.c"
	@./runner.sh "C" "Run" "Arithmetic" "./Arithmetic1"

cpp:
	@./runner.sh "C++" "Compile" "HelloWorld" "g++ -o HelloWorld2App HelloWorldApp.cpp"
	@./runner.sh "C++" "Run" "HelloWorld" "./helloWorld2App"
	@./runner.sh "C++" "Compile" "Arithmetic" "g++ -o Arithmetic2 Arithmetic.cpp"
	@./runner.sh "C++" "Run" "Arithmetic" "./Arithmetic2"

cs:
	@./runner.sh "C#" "Compile" "HelloWorld" "mcs -out:HelloWorld3App HelloWorldApp.cs"
	@./runner.sh "C#" "Run" "HelloWorld" "mono HelloWorld3App"

py:
	@./runner.sh "Python" "Run" "HelloWorld" "python HelloWorldApp.py"

php:
	@./runner.sh "PHP" "Run" "HelloWorld" "php HelloWorldApp.php"

vb:
	@./runner.sh "VB.NET" "Compile" "HelloWorld" "vbnc -out:HelloWorld4App HelloWorldApp.vb"
	@./runner.sh "VB.NET" "Run" "HelloWorld" "mono HelloWorld4App"
	@./runner.sh "VB.NET" "Compile" "Arithmetic" "vbnc -out:Arithmetic4 Arithmetic.vb"
	@./runner.sh "VB.NET" "Run" "Arithmetic" "mono Arithmetic4"

js:
	@./runner.sh "JS" "Run" "HelloWorld" "node HelloWorldApp.js"
	@./runner.sh "JS" "Run" "node Arithmetic.js"

asm:
	@./runner.sh "ASM" "Assembly" "HelloWorld" "nasm -f macho HelloWorldApp.asm"
	@./runner.sh "ASM" "Link" "HelloWorld" "ld -o HelloWorld5App -e helloworldapp HelloWorldApp.o"
	@./runner.sh "ASM" "Run" "HelloWorld" "./HelloWorld5App"

rb:
	@./runner.sh "Ruby" "Run" "HelloWorld" "ruby HelloWorldApp.rb"

pl:
	@./runner.sh "Perl" "Run" "HelloWorld" "perl HelloWorldApp.pl"

objc:
	@./runner.sh "ObjC" "Compile" "HelloWorld" "clang -o HelloWorld6App -Wall -std=c99 HelloWorldApp.m -framework Foundation -lobjc"
	@./runner.sh "ObjC" "Run" "HelloWorld" "./HelloWorld6App"

swift:
	@./runner.sh "Swift" "Compile" "HelloWorld" "swiftc HelloWorldApp.swift -o HelloWorld7App"
	@./runner.sh "Swift" "Run" "HelloWorld" "./HelloWorld7App"

go:
	@./runner.sh "Go" "Compile" "HelloWorld" "go install HelloWorldApp.go"
	@./runner.sh "Go" "Run" "HelloWorld" "./HelloWorldApp"

clear:
	@rm Arithmetic.class
	@rm Arithmetic1
	@rm Arithmetic2
	@rm Arithmetic4
	@rm helloWorldApp
	@rm helloWorld1App
	@rm helloWorld2App
	@rm helloWorld3App
	@rm helloWorld4App
	@rm helloWorld5App
	@rm helloWorldApp.o
	@rm helloWorld6App
	@rm helloWorld7App
	@rm HelloWorldApp.class
