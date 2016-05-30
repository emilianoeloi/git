.PHONY: java c cpp cs clear

all: java c cpp cs clear

java:
	@javac HelloWorldApp.java
	@java HelloWorldApp

c:
	@clang -o helloWorldApp HelloWorldApp.c
	@./helloWorldApp

cpp:
	@g++ -o HelloWorld2App HelloWorldApp.cpp
	@./helloWorld2App

cs:
	@mcs -out:HelloWorld3App HelloWorldApp.cs
	@mono HelloWorld3App

clear:
	@rm helloWorldApp
	@rm helloWorld2App
	@rm HelloWorldApp.class
