<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- These 2 elements effectively assign
     $messages = resources/en.xml/<messages>,
     then $messages is used in the "localized-message" template.  -->
	<xsl:param name="lang">en</xsl:param>
	<xsl:variable name="messages"
		select="document(concat('resources/', $lang, '.xml'))/messages"/> 
	
	<xsl:template name="msg23" match="msg23">
		<xsl:call-template name="localized-message">
			<xsl:with-param name="msgcode">msg23</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="localized-message">
		<xsl:param name="msgcode"/>
		<!-- Show message string. -->
		<xsl:message terminate="no">
			<xsl:value-of select="$messages"></xsl:value-of>
<!--			<xsl:value-of select="$messages/message[1][@name=$msgcode]"/>-->
		</xsl:message>
	</xsl:template>
	
</xsl:stylesheet>