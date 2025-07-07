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



-----

An XML schema defines the list of elements and attributes that can be used in an XML document. 

An XML schema specifies the order in which the elements appear in the XML document, and their data types. 
Microsoft has developed the XML Schema Definition (XSD) language to define the schema of an XML document.


XSD data types


xsd:string: Represents textual data.
xsd:integer: Represents whole numbers. Further subtypes include xsd:nonPositiveInteger, xsd:negativeInteger, xsd:long, xsd:int, xsd:short, xsd:byte, xsd:nonNegativeInteger, xsd:unsignedLong, xsd:unsignedInt, xsd:unsignedShort, xsd:unsignedByte, and xsd:positiveInteger.
xsd:decimal: Represents decimal numbers with arbitrary precision.
xsd:float: Represents single-precision floating-point numbers.
xsd:double: Represents double-precision floating-point numbers.
xsd:boolean: Represents boolean values (true or false).
xsd:date: Represents dates in the format CCYY-MM-DD.
xsd:time: Represents time in the format hh:mm:ss.
xsd:dateTime: Represents date and time.
xsd:duration: Represents time intervals.
xsd:QName: Represents qualified names.
xsd:anyURI: Represents a URI reference.



xml

<?xml version="1.0"?>
<salary>12500</salary>

xsd

<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <xsd:element name="salary" type="xsd:positiveInteger"></xsd:element>

</xsd:schema>







There are two types of elements, simple and complex that can be defined in a schema.
Simple Element
A simple element does not contain any child elements or attributes.
It contains only values, such as numbers, strings, and dates. 
You can specify restrictions on elements by defining a new simple data type from an existing data type using facet values.
You can also associate an element with a simple data type.

<xsd:element name=“element-name" type="data type" min0ccurs="nonNegativeInteger" max0ccurs="nonNegativeInteger|unbounded"/>


Complex Element
A complex element contains other elements, attributes, and mixed content.

To declare a complex element, you need to first define a complex data type.
After defining the complex data type, you can declare a complex element by associating this data type with the element.

     Let us look at the syntax for declaring a complex element.

<xsd:complexType name="data type name">Content model declaration</xsd:complexType>

In XSD, an attribute for a user-defined element is declared using the attribute element. 
The syntax for declaring an attribute in XSD is:
	<attribute name="attributename"  ref="attributename"
	type="datatypename" use="value"  value="value"> </attribute> 
The attribute element contains attributes that are used to further qualify and restrict the scope and usage of the user-defined attribute.


XML
	employeedata
		employee regid
			employeeid
			employeename
			salary
				basic
				pf


XML
<?xml version="1.0" encoding="UTF-8"?>
<employeedata>
	<employee regid="19191">
		<employeeid>1911</employeeid>
		<employeename>Tufail</employeename>
		<salary>
			<basic>8181</basic>
			<pf>18191</pf>	
		</salary>
	</employee>
</employeedata>
			
XSD
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsd:element name="employeedata" type="myType1"></xsd:element>
	<xsd:complexType name="myType1">
		<xsd:sequence>
			<xsd:element name="employee" type="myType2" minOccurs="2" maxOccurs="10"></xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	
	<xsd:complexType name="myType2">
		<xsd:sequence>
		<xsd:element name="employeeid" type="xsd:positiveInteger" ></xsd:element>	
		<xsd:element name="employeename" type="xsd:string" ></xsd:element>	
		<xsd:element name="salary" type="myType3" ></xsd:element>
		<xsd:element name="mobileNumber" type="phone" ></xsd:element>	
		</xsd:sequence>

		<xsd:attribute name="regid" type="xsd:string" use="required" />

	</xsd:complexType>


	<xsd:complexType name="myType3">
		<xsd:all>
		<xsd:element name="basic" type="xsd:positiveInteger" ></xsd:element>
		<xsd:element name="pf" type="mydatatype1" ></xsd:element>
		</xsd:all>
	</xsd:complexType>

	
	<xsd:simpleType name="phone">
		<xsd:restriction base="xsd:string">	
		<xsd:length value="10"/>
		<xsd:pattern value="\d{2}-\d{7}"/>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="emailAddress">
   	 <xsd:restriction base="xsd:string">
   	   <xsd:pattern value="[^@]+@[^\.]+\..+"/>
  	  </xsd:restriction>
	  </xsd:simpleType>
	
<xsd:simpleType name="mydatatype1">
<xsd:restriction base="xsd:nonNegativeInteger">
<xsd:maxInclusive value="5000"></xsd:maxInclusive>
<xsd:minInclusive value="2000"></xsd:minInclusive>
</xsd:restriction>
</xsd:simpleType>

</xsd:schema>



https://codeshare.io/tufail

create schema file for the following xml file :
MOVIEDATA
	MOVIE	ID 	REGNO
		NAME
		RELEASEDATE
		ACTOR
		COST
			PRODUCTIONCOST
			MARKETINGCOST		
		DIRECTOR	
		NOFOSONGS	
		TYPE		
1. ID SHOULD START WITH M FOLLOWED BY 3 DIGITS
2. TYPE SHOULD BE EITHER ACTION OR COMIC.
3. PRODUCTIONCOST  should be between 30000-45000
4. MARKETINGCOST should be between 25000-29000
5. BOTH ID and REGNO attribute are mandatory


DTD

Document Type Definition




XML and CSS

<?xml-stylesheet type="text/css" href="product.css"?>


employee {

}



XML- XSD	- Rules
XML -CSS - Styling
XML - XSL - Extensible Style sheet langugae



















XML and XSL/XSLT

CSS does not support the reorder, sort, and display of elements based on a condition. 
For such advanced formatting, XML supports Extensible Style Sheet Language (XSL). 
XSL has two parts:
XSL Transformations (XSLT)


XSLT provides the following elements to select and format data:
stylesheet
value-of
for-each
sort
text


<?xml version="1.0"?>
<?xml:stylesheet type="text/xsl" href="product1.xsl"?>
<PRODUCTDATA>
	<PRODUCT PRODID="P001" CATEGORY="Toy">
		<PRODUCTNAME>Mini Bus</PRODUCTNAME>
		<DESCRIPTION>This is a toy for children aged 4 and 	above</DESCRIPTION>
		<PRICE>190</PRICE>
		<QUANTITY>54</QUANTITY>
	</PRODUCT>
	<PRODUCT PRODID="P002" CATEGORY="Barbie Doll">
		<PRODUCTNAME>Barbie Doll</PRODUCTNAME>
		<DESCRIPTION>This toy is for children in the age group of 5-10</DESCRIPTION>
		<PRICE>2001</PRICE>bn
		<QUANTITY>200</QUANTITY>
	</PRODUCT>
		<PRODUCT PRODID="P003" CATEGORY="Doll">
		<PRODUCTNAME>Elephant</PRODUCTNAME>
		<DESCRIPTION>This toy is for children in the age group of 5-10</DESCRIPTION>
		<PRICE>10</PRICE>
		<QUANTITY>111</QUANTITY>
	</PRODUCT>
	<PRODUCT PRODID="P004" CATEGORY="Doll">
		<PRODUCTNAME>Cat</PRODUCTNAME>
		<DESCRIPTION>This toy is for children in the age group of 5-10</DESCRIPTION>
		<PRICE>101</PRICE>
		<QUANTITY>112</QUANTITY>
	</PRODUCT>
</PRODUCTDATA>

---

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/"> 

<xsl:for-each select="PRODUCTDATA/PRODUCT"> 

	<xsl:sort select="PRICE" order="descending" data-type="number"/>
	<LI> 
	<xsl:text>Product ID: </xsl:text>  
	  <font color="red"><xsl:value-of select="@PRODID"/>
	        </font> 
	<xsl:text>Product Category</xsl:text>
	<xsl:value-of select="@CATEGORY"/>

	  <xsl:text> Product Name: </xsl:text>
	  <font color="red"><xsl:value-of
	         select="PRODUCTNAME"/></font> 

	  <xsl:text> Price Per Unit (In U.S. $): </xsl:text>
	  <font color="red"><xsl:value-of select="PRICE"/></font> 

	  <xsl:text> Quantity : </xsl:text>
	  <font color="blue"><xsl:value-of select="QUANTITY"/></font> 
	
</xsl:for-each>


</xsl:template>
</xsl:stylesheet>


---------------


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/"> 

<table border="5">
	<xsl:for-each select="PRODUCTDATA/PRODUCT"> 
	<xsl:sort select="@PRODID" order="descending"/>
	<tr><td>  <xsl:text>Product ID: </xsl:text>  </td>
		<td>  <font color="red"><xsl:value-of select="@PRODID"/>
	        </font> </td>
	<td>
  <xsl:text> Product Name: </xsl:text></td><td>
  <font color="red"><xsl:apply-templates
         select="PRODUCTNAME"/></font></td><td> 
  <xsl:text> Price Per Unit (In U.S. $): </xsl:text></td>
<td>
  <font color="red"><xsl:value-of select="PRICE"/></font></td>
</tr>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>

-----------First.xml

<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="First.xsl"?>
<CUSTOMERDETAILS>
	<CUSTOMER>
		<NAME>Rupesh</NAME>
		<DOB>2009-12-09</DOB>
		<MOBILE>
			<HOME>9876151111</HOME>
			<OFFICE>080-4240811</OFFICE>
		</MOBILE>
		<AMOUNT>4000</AMOUNT>
		<EMAILID>rupesh@gmail.com</EMAILID>
	</CUSTOMER>
	<CUSTOMER>
		<NAME>Rekha</NAME>
		<DOB>2009-12-09</DOB>
		<MOBILE>
			<HOME>9876151111</HOME>
			<OFFICE>080-4240811</OFFICE>
		</MOBILE>
		<AMOUNT>1000</AMOUNT>
		<EMAILID>rupesh@gmail.com</EMAILID>
	</CUSTOMER>
<CUSTOMER>
		<NAME>Rohan</NAME>
		<DOB>2009-12-09</DOB>
		<MOBILE>
			<HOME>9876151111</HOME>
			<OFFICE>080-4240811</OFFICE>
		</MOBILE>
		<AMOUNT>1212</AMOUNT>
		<EMAILID>rupesh@gmail.com</EMAILID>
	</CUSTOMER>
<CUSTOMER>
		<NAME>Jaya</NAME>
		<DOB>2009-12-09</DOB>
		<MOBILE>
			<HOME>9876151111</HOME>
			<OFFICE>080-4240811</OFFICE>
		</MOBILE>
		<AMOUNT>223</AMOUNT>
		<EMAILID>rupesh@gmail.com</EMAILID>
	</CUSTOMER>
<CUSTOMER>
		<NAME>Manoj</NAME>
		<DOB>2009-12-09</DOB>
		<MOBILE>
			<HOME>9876151111</HOME>
			<OFFICE>080-4240811</OFFICE>
		</MOBILE>
		<AMOUNT>122323</AMOUNT>
		<EMAILID>rupesh@gmail.com</EMAILID>
	</CUSTOMER>
</CUSTOMERDETAILS>

---------------

First.xsl

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/"> 
<html>
<body>
<xsl:for-each select="CUSTOMERDETAILS/CUSTOMER"> 

<xsl:sort select="AMOUNT" order="descending" data-type="number"/>
	<LI> 

 <xsl:text>Customer name  : </xsl:text>
<font color="red"><xsl:value-of select="NAME"/>
	        </font> 

 <xsl:text>DOB  : </xsl:text>
<font color="red"><xsl:value-of select="DOB"/>
	        </font> 

 <xsl:text>Amount  : </xsl:text>
<font color="red"><xsl:value-of select="AMOUNT"/>
	        
 <xsl:text>Email ID : </xsl:text>
</font> 

<font color="red"><xsl:value-of select="EMAILID"/>
	        </font> 
</LI>
</xsl:for-each>

</body>
</html>
</xsl:template>

</xsl:stylesheet>



----------------XML 
Problem Statement:

The various products at CyberShoppe are purchased from their suppliers through their branch offices. The purchase order details are sent to the head office to generate reports. To ensure that the data can be accessed across all hardware and software used at the head office, the branch offices send data in an XML format. On receiving this data, the head office needs to verify that all branches have specified the required information in a consistent format.
	The purchase order details sent by the branch offices include the product ID, order ID, date of the purchase order, name and address of the supplier, quantity ordered, and price per unit. 
	The product ID and order ID are used in a number of documents. The product ID begins with P, followed by three digits. Similarly, the order ID begins with O, followed by three digits. 







These restrictions must be specified at a centralized location such that they can be applied across multiple documents.


--------

The list of products sold at CyberShoppe needs to be displayed. These products need to be categorized based on their prices, with products priced higher than $50 displayed in red and the rest in green. The product name, description, price, and quantity on hand of each product should be displayed, as shown in the following figure.







     The product.xml file will be provided to you.



