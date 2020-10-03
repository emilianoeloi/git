.PHONY: asm c cpp cs php python pl vb js rb objc java swift go lua kotlin clear

all: java c cpp cs python php vb js asm rb pl objc swift go lua kotlin clear

setup:
	brew update
	brew install coreutils

kotlin-setup:
	brew install kotlin
kotlin:
	@./runner.sh "Kotlin" "Compile" "HelloWorld" "kotlinc kotlin/HelloWorld.kt -include-runtime -d kotlin/HelloWorldKT.jar"
	@./runner.sh "Kotlin" "Run" "HelloWorld" "java -jar kotlin/HelloWorldKT.jar"

java:
	@./runner.sh "Java" "Compile" "HelloWorld" "javac java/HelloWorldApp.java"
	@./runner.sh "Java" "Run" "HelloWorld" "java java/HelloWorldApp"
	@./runner.sh "Java" "Compile" "Arithmetic" "javac java/Arithmetic.java"
	@./runner.sh "Java" "Run" "Arithmetic" "java java/Arithmetic"

c:
	@./runner.sh "C" "Compile" "HelloWorld" "clang -o c/helloWorldC c/HelloWorldC.c"
	@./runner.sh "C" "Run" "HelloWorld" "./c/helloWorldC"
	@./runner.sh "C" "Compile" "Arithmetic" "clang -o c/ArithmeticC c/ArithmeticC.c"
	@./runner.sh "C" "Run" "Arithmetic" "./c/ArithmeticC"

cpp:
	@./runner.sh "C++" "Compile" "HelloWorld" "g++ -o HelloWorld2App HelloWorldApp.cpp"
	@./runner.sh "C++" "Run" "HelloWorld" "./helloWorld2App"
	@./runner.sh "C++" "Compile" "Arithmetic" "g++ -o Arithmetic2 Arithmetic.cpp"
	@./runner.sh "C++" "Run" "Arithmetic" "./Arithmetic2"

cs:
	@./runner.sh "C#" "Compile" "HelloWorld" "mcs -out:HelloWorld3App HelloWorldApp.cs"
	@./runner.sh "C#" "Run" "HelloWorld" "mono HelloWorld3App"

python:
	@./runner.sh "Python" "Run" "HelloWorld" "python python/HelloWorldPY.py"

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

swift-setup:
	# brew install swift
swift:
	@./runner.sh "Swift" "Compile" "HelloWorld" "swiftc swift/HelloWorldSwift.swift -o swift/HelloWorldSwift"
	@./runner.sh "Swift" "Run" "HelloWorld" "swift/HelloWorldSwift"

go-setup:
	brew install golang
	
go:
	@./runner.sh "Go" "Run" "HelloWorld" "go run go/HelloWorldGo.go"

lua-setup:
	brew install lua
lua:
	@./runner.sh "Lua" "Run" "HelloWorld" "lua ./HelloWorldApp.lua"

clear:
	@rm kotlin/HelloWorldKT.jar
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
