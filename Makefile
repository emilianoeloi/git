.PHONY: java c cpp cs py php vb js clear

all: java c cpp cs py php vb js clear

setup:
	brew install coreutils

java:
	@./compiler.sh "Java" "Compile" "javac HelloWorldApp.java"
	@./compiler.sh "Java" "Run" "java HelloWorldApp"

c:
	@./compiler.sh "C" "Compile" "clang -o helloWorldApp HelloWorldApp.c"
	@./compiler.sh "C" "Run" "./helloWorldApp"

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

js:
	@./compiler.sh "JS" "Run" "node HelloWorldApp.js"

clear:
	@rm helloWorldApp
	@rm helloWorld2App
	@rm helloWorld3App
	@rm helloWorld4App
	@rm HelloWorldApp.class
