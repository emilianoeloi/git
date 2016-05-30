java:
	@javac HelloWorldApp.java
	@java HelloWorldApp

c:
	@clang -o helloWorldApp HelloWorld.c
	@./helloWorld
