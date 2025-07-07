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