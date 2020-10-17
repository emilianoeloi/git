.SILENT:
.DEFAULT_GOAL := help

COLOR_RESET = \033[0m
COLOR_COMMAND = \033[36m
COLOR_YELLOW = \033[33m
COLOR_GREEN = \033[32m
COLOR_RED = \033[31m

PROJECT := git

## Configurar
setup:
	brew update
	brew install coreutils

## Configurar o Kotlin
kotlin-setup:
	brew install kotlin
## Kotlin
kotlin:
	@./runner.sh "Kotlin" "Compile" "HelloWorld" "kotlinc kotlin/HelloWorld.kt -include-runtime -d kotlin/HelloWorldKT.jar"
	@./runner.sh "Kotlin" "Run" "HelloWorld" "java -jar kotlin/HelloWorldKT.jar"

## Java
java:
	@./runner.sh "Java" "Compile" "HelloWorld" "javac java/HelloWorldApp.java"
	@./runner.sh "Java" "Run" "HelloWorld" "java java/HelloWorldApp"
	@./runner.sh "Java" "Compile" "Arithmetic" "javac java/Arithmetic.java"
	@./runner.sh "Java" "Run" "Arithmetic" "java java/Arithmetic"

## C
c:
	@./runner.sh "C" "Compile" "HelloWorld" "clang -o c/helloWorldC c/HelloWorldC.c"
	@./runner.sh "C" "Run" "HelloWorld" "./c/helloWorldC"
	@./runner.sh "C" "Compile" "Arithmetic" "clang -o c/ArithmeticC c/ArithmeticC.c"
	@./runner.sh "C" "Run" "Arithmetic" "./c/ArithmeticC"

## C++
cpp:
	@./runner.sh "C++" "Compile" "HelloWorld" "g++ -o HelloWorld2App HelloWorldApp.cpp"
	@./runner.sh "C++" "Run" "HelloWorld" "./helloWorld2App"
	@./runner.sh "C++" "Compile" "Arithmetic" "g++ -o Arithmetic2 Arithmetic.cpp"
	@./runner.sh "C++" "Run" "Arithmetic" "./Arithmetic2"

## C#
cs:
	@./runner.sh "C#" "Compile" "HelloWorld" "mcs -out:HelloWorld3App HelloWorldApp.cs"
	@./runner.sh "C#" "Run" "HelloWorld" "mono HelloWorld3App"

## Python
python:
	@./runner.sh "Python" "Run" "HelloWorld" "python python/HelloWorldPY.py"

## PHP
php:
	@./runner.sh "PHP" "Run" "HelloWorld" "php HelloWorldApp.php"

## VisualBasic .NET
vb:
	@./runner.sh "VB.NET" "Compile" "HelloWorld" "vbnc -out:HelloWorld4App HelloWorldApp.vb"
	@./runner.sh "VB.NET" "Run" "HelloWorld" "mono HelloWorld4App"
	@./runner.sh "VB.NET" "Compile" "Arithmetic" "vbnc -out:Arithmetic4 Arithmetic.vb"
	@./runner.sh "VB.NET" "Run" "Arithmetic" "mono Arithmetic4"

## Javascript
js:
	@./runner.sh "JS" "Run" "HelloWorld" "node HelloWorldApp.js"
	@./runner.sh "JS" "Run" "node Arithmetic.js"

## Assembly
asm:
	@./runner.sh "ASM" "Assembly" "HelloWorld" "nasm -f macho HelloWorldApp.asm"
	@./runner.sh "ASM" "Link" "HelloWorld" "ld -o HelloWorld5App -e helloworldapp HelloWorldApp.o"
	@./runner.sh "ASM" "Run" "HelloWorld" "./HelloWorld5App"

## ruby
rb:
	@./runner.sh "Ruby" "Run" "HelloWorld" "ruby HelloWorldApp.rb"

## perl
pl:
	@./runner.sh "Perl" "Run" "HelloWorld" "perl HelloWorldApp.pl"

## objective-c
objective-c:
	@./runner.sh "Objective-C" "Compile" "HelloWorld" "clang -o objective-c/HelloWorldObjC -Wall -std=c99 objective-c/HelloWorldObjC.m -framework Foundation -lobjc"
	@./runner.sh "Objective-C" "Run" "HelloWorld" "./objective-c/HelloWorldObjC"

## Configurar o swift
swift-setup:
	# brew install swift
## swift
swift:
	@./runner.sh "Swift" "Compile" "HelloWorld" "swiftc swift/HelloWorldSwift.swift -o swift/HelloWorldSwift"
	@./runner.sh "Swift" "Run" "HelloWorld" "swift/HelloWorldSwift"

## Configurar o lua
go-setup:
	brew install golang
## go	
go:
	@./runner.sh "Go" "Run" "HelloWorld" "go run go/HelloWorldGo.go"

## Configurar o lua
lua-setup:
	brew install lua
## lua
lua:
	@./runner.sh "Lua" "Run" "HelloWorld" "lua ./HelloWorldApp.lua"

## Limpar todos os arquivos compilados etc
clear:

## Configurar o r
r-setup:
	brew install r
r:
	

## Prints help message
help:
	printf "\n${COLOR_YELLOW}${PROJECT}\n------\n${COLOR_RESET}"
	awk '/^[a-zA-Z\-\_0-9\.%]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "${COLOR_COMMAND}$$ make %s${COLOR_RESET} %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort
	printf "\n"