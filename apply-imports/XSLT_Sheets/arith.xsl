﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs" version="2.0">
	<xsl:template match="op[@symbol='+']">
		<xsl:value-of select="sum(operand)"/> (from arith.xsl)
	</xsl:template>
	<xsl:template match="op[@symbol='-']">
		<xsl:value-of select="number(operand[1])-number(operand[2])"/> 
		(from arith.xsl)
	</xsl:template>
	<xsl:template match="op[@symbol='*']">
		<xsl:value-of select="number(operand[1])*number(operand[2])"/> 
		(from arith.xsl)
	</xsl:template>
</xsl:stylesheet>
