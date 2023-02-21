all: compil

compil:
	javac -d bin -classpath importJar/ojdbc6.jar:bin -sourcepath . ClientApp.java


test_appli:
	javac -d bin -classpath importJar/ojdbc6.jar:bin -sourcepath . ClientApp.java
	java -classpath bin:importJar/ojdbc6.jar:bin appliJava/ClientApp

test_view:
	javac -d bin -classpath importJar/ojdbc6.jar:bin -sourcepath . View.java
	java -classpath bin:importJar/ojdbc6.jar:bin appliJava/View uiDesign/connexion.ui

clear:
	find -name "*.class" | xargs rm

help:
	@echo "make compil:		Compilation du fichier ClientApp.java"
	@echo "make test_appli:	Compilation et lancement de l'appli"
	@echo "make clear: 		Suppression des fichiers .class"