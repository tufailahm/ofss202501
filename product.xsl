<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/"> 
<html>
<body>
<xsl:for-each select="PRODUCTDATA/PRODUCT"> 

	<xsl:sort select="QUANTITY" order="ascending" data-type="number"/>
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
	</LI>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>