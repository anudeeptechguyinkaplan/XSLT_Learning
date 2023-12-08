<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:apply-templates select="*"/>
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="*">
		<xsl:apply-templates select="//record"/>
	</xsl:template>
	<xsl:template match="record">
		<xsl:if test="name = ''">
			<!-- This will print the error message to the processor -->
			<xsl:message terminate="yes">This is the error message, that
				impends the execution from the XSLT, processor end.
			</xsl:message>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
