<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="teiHeader"/>
    
    
    <xsl:template match="head">
<xsl:text>
**</xsl:text>
        <xsl:apply-templates/>
<xsl:text>**
</xsl:text>
    </xsl:template>
    
    
    <xsl:template match="pb">
        <xsl:value-of select="@n"/>
        <xsl:text> </xsl:text>
    </xsl:template>
    
</xsl:stylesheet>