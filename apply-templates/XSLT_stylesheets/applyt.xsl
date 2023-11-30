<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs"
	version="2.0">
	
		
		<xsl:template match="/">
			<HTML>
				<HEAD><title>Applying Templates</title></HEAD>
				<BODY>
					<TABLE>
						<xsl:apply-templates select="customers/customer">
							<xsl:sort select="state"/>
							<xsl:sort select="name"/> 
						</xsl:apply-templates>
					</TABLE>
					
				</BODY>
			</HTML>
		</xsl:template>
		
		<xsl:template match="customer">
			<TR>
				<xsl:apply-templates select="name" />
				<xsl:apply-templates select="address" />
				<xsl:apply-templates select="state" />
				<xsl:apply-templates select="phone" />
				<xsl:apply-templates select="phone" mode="accountNumber"/>
			</TR>
		</xsl:template>
		
		<xsl:template match="name">
			<TD>
				<xsl:apply-templates />
			</TD>
		</xsl:template>
		
		<xsl:template match="address">
			<TD> <xsl:apply-templates /> </TD>
		</xsl:template>
		
		<xsl:template match="state">
			<TD> <xsl:apply-templates /> </TD>
		</xsl:template>
		
		<xsl:template match="phone">
			<TD> <xsl:apply-templates /> </TD>
		</xsl:template>
		
		<xsl:template match="phone" mode="accountNumber">
			<TD>
				1-<xsl:value-of select="."/>-001
			</TD>
		</xsl:template>
		
	</xsl:stylesheet>
