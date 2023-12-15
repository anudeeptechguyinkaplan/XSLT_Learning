<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="text()">
		<xsl:value-of select="current()"/>
	</xsl:template>
	
	<xsl:template match="nodes">
		<html>
			<head>
				<title>Current Function</title>
			</head>
			<body>
		<blockquote><xsl:apply-templates/></blockquote>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>