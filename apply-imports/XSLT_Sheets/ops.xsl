<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:math="http://exslt.org/math" 
	version="3.0">
	<xsl:output method="html" html-version="5"></xsl:output>
	<xsl:import href="str.xsl"/>
	<xsl:import href="arith.xsl"/>
	<xsl:template match="op">
		<xsl:value-of select="operand[1]"/>
		<xsl:value-of select="@symbol"/>
		<xsl:value-of select="operand[2]"/>
		= <xsl:apply-imports/>
		<br/>
	</xsl:template>
</xsl:stylesheet>