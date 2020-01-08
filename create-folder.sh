#!/bin/bash

echo "Folder name: "
read foldername

echo "Tasks count: "
read taskscount

echo "Creating $foldername skeleton"

mkdir $foldername

for (( i=1; i <= $taskscount; i++ ))
do
	path="$foldername/task$i"
	mkdir $path
	cp build.sh "$path/"
	cp test.sh "$path/"
	cp skeleton.cpp "$path/main.cpp"
	touch "$path/test.in"
	touch "$path/test.out"
	touch "$path/test.ans"
done

echo "Done"
