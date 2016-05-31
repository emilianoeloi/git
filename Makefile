.PHONY: java c cpp cs py php clear

all: java c cpp cs py php clear

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

clear:
	@rm helloWorldApp
	@rm helloWorld2App
	@rm helloWorld3App
	@rm HelloWorldApp.class
