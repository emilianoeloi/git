.PHONY: java c cpp clear

all: java c cpp clear

java:
	@javac HelloWorldApp.java
	@java HelloWorldApp

c:
	@clang -o helloWorldApp HelloWorldApp.c
	@./helloWorldApp

cpp:
	@g++ -o HelloWorld2App HelloWorldApp.cpp
	@./helloWorld2App

clear:
	@rm helloWorldApp
	@rm helloWorld2App
	@rm HelloWorldApp.class
