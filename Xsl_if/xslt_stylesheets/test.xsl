﻿<?xml version='1.0'?>
	<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
		
		<xsl:template match="namelist/name">
			<xsl:apply-templates/>
			<xsl:if test="position()!=last()">, </xsl:if>
		</xsl:template>
		
	</xsl:stylesheet>
