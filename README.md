pwd
whoami
cd ..
cd

----Remove file and directories


rmdir java
rm hello.txt
rm -r c++	[ remove non empty folders]

------
cat hello.txt
cat hello.txt > k.txt
cat hello.txt 2> error.txt 	[ error redirection ]

copy
---------

cp
mv [ rename also]

absolute path
cp /home/ubuntu/c++/notes/important/question.txt /home/ubuntu/docker

cp ./question.txt /home/ubuntu/docker

cp ./question.txt ./../../../docker


Create nested folder
mkdir -p a/b/c/

Hands on
--------------

friends
	close
	school
	    rohan.txt
family
	cousin
                   copy rohan.txt here 

navigate to cousin folder and then copy





. 	current folder
..	parent folder

FAP
--------------

r - read
w - write
x - execute

u - user
g  - group 
o - other

+  assign permissions
-  revoke permissions

chmod ugo-rwx hello.txt

chmod ugo+rwx hello.txt

chmod u+r hello.txt
---------
Numeric
4	- read
2	- write
1	- execute

chmod 653 hello.txt

chmod 000 hello.txt

--w-r-xrw-

chmod 256 hello.txt


Hands - On (30 minutes) 14:07 03-07-2025

1. Create three directories like language,task and course

   Create the following sub directories in each directory
   language ---- english,french and dutch
    task   ----  fast, medium, and intermediate
    course  --- sql, plsql and dotnet

2. Copy all the files from etc directory to task
task>
3. move all the files beginning with t to sql directory of course
mv t* ./../course/sql

4. copy the files beginning with the letter s to french of language
5. copy the files from the french to dotnet
6. delete all the files from french
rm *

7. Display all the files with the permission 644

8. Create four files which will have the following content
   file1 -- output of all the users who have currently logged in
   file2 -- calender of the year 2000
   file3 -- finding all the files which belongs to group project
	find . 
   file4 -- sorting the content of the file names which around 10 names


9. Merge all the files which were created in question 8 and send the output to file5



10. Display the first 10 lines of the file5


https://codeshare.io/tufail 

Wild Card
------------------

ls -l a*
ls -l ?a*.txt
ls -l *b
ls -l [abc]*.txt


cp /etc/* docker

--------------------------------------
Shell Scripting in UNIX/Linux


















-----------------
XML (Extensible Markup Language)

store the data and transport the data.


BLR - MUM	(19th July 2025)	- Indigo	- XML format





















XML is a text-based markup language that enables storage of data in a structured format.
XML is a cross-platform, hardware and software independent markup language that enables structured data transfer between heterogeneous systems.


XML is used as a common data interchange format in a number of applications.


The rules that govern the creation of a well-formed XML document:
XML must have only one root tag.
Every start tag must have an end tag.
Empty tags must be closed using a forward slash (/).
All attribute values must be given in double quotation marks.
Tags must have proper nesting.
XML tags are case sensitive.
