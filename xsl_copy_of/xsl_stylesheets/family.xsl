<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	
	<xsl:template match="person">
		<p>
			<xsl:copy-of select="given-name"/>
			<xsl:text> </xsl:text>
			<xsl:copy-of select="family-name"/>
		</p>
	</xsl:template>
	
</xsl:stylesheet>