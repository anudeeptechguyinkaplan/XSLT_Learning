<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs" version="2.0">
	<xsl:template match="desc">
		<DIV>
			<xsl:value-of select="."/>
		</DIV>
	</xsl:template>
	<xsl:template match="op[@name = 'add']">
		<xsl:value-of select="operand[1]"/>
		<xsl:value-of select="operand[2]"/> (from str.xsl) </xsl:template>
	<xsl:template match="op[@name = 'mul']">
		<xsl:value-of select="operand[2]"/>
		<xsl:value-of select="operand[1]"/> (from str.xsl) </xsl:template>
</xsl:stylesheet>
