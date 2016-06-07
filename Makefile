.PHONY: java c cpp cs py php vb js asm rb pl objc swift go clear

all: java c cpp cs py php vb js asm rb pl objc swift go clear

setup:
	brew install coreutils
	brew install golang

java:
	@./compiler.sh "Java" "Compile" "javac HelloWorldApp.java"
	@./compiler.sh "Java" "Run" "java HelloWorldApp"

c:
	@./compiler.sh "C" "Compile" "clang -o helloWorldApp HelloWorldApp.c"
	@./compiler.sh "C" "Run" "./helloWorldApp"
	@./compiler.sh "C" "Compile" "clang -o Arithmetic Arithmetic.c"
	@./compiler.sh "C" "Run" "./Arithmetic"

cpp:
	@./compiler.sh "C++" "Compile" "g++ -o HelloWorld2App HelloWorldApp.cpp"
	@./compiler.sh "C++" "Run" "./helloWorld2App"

cs:
	@./compiler.sh "C#" "Compile" "mcs -out:HelloWorld3App HelloWorldApp.cs"
	@./compiler.sh "C#" "Run" "mono HelloWorld3App"

py:
	@./compiler.sh "Python" "Run" "python HelloWorldApp.py"

php:
	@./compiler.sh "PHP" "Run" "php HelloWorldApp.php"

vb:
	@./compiler.sh "VB.NET" "Compile" "vbnc -out:HelloWorld4App HelloWorldApp.vb"
	@./compiler.sh "VB.NET" "Run" "mono HelloWorld4App"
	@./compiler.sh "VB.NET" "Compile" "vbnc -out:Arithmetic4 Arithmetic.vb"
	@./compiler.sh "VB.NET" "Run" "mono Arithmetic4"

js:
	@./compiler.sh "JS" "Run" "node HelloWorldApp.js"
	@./compiler.sh "JS" "Run" "node Arithmetic.js"

asm:
	@./compiler.sh "ASM" "Assembly" "nasm -f macho HelloWorldApp.asm"
	@./compiler.sh "ASM" "Link" "ld -o HelloWorld5App -e helloworldapp HelloWorldApp.o"
	@./compiler.sh "ASM" "Run" "./HelloWorld5App"

rb:
	@./compiler.sh "Ruby" "Run" "ruby HelloWorldApp.rb"

pl:
	@./compiler.sh "Perl" "Run" "perl HelloWorldApp.pl"

objc:
	@./compiler.sh "ObjC" "Compile" "clang -o HelloWorld6App -Wall -std=c99 HelloWorldApp.m -framework Foundation -lobjc"
	@./compiler.sh "ObjC" "Run" "./HelloWorld6App"

swift:
	@./compiler.sh "Swift" "Compile" "swiftc HelloWorldApp.swift -o HelloWorld7App"
	@./compiler.sh "Swift" "Run" "./HelloWorld7App"

go:
	@./compiler.sh "Go" "Compile" "go install HelloWorldApp.go"
	@./compiler.sh "Go" "Run" "./HelloWorldApp"

clear:
	@rm Arithmetic
	@rm Arithmetic4
	@rm helloWorldApp
	@rm helloWorld2App
	@rm helloWorld3App
	@rm helloWorld4App
	@rm helloWorld5App
	@rm helloWorldApp.o
	@rm helloWorld6App
	@rm helloWorld7App
	@rm HelloWorldApp.class
