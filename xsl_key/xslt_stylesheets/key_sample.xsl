<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:key name="title-search" match="book" use="@author"/>
	<xsl:template match="/">
		<html>
			<title>Key Function</title>
			<body>
				<xsl:for-each select="key('title-search', 'David Perry')">
					<div>
						<xsl:value-of select="@title"/>
						<xsl:text>__Written__By__:</xsl:text>
						<xsl:value-of select="@author"/>
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
