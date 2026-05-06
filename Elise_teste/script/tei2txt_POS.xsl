<?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml"
        schematypens="http://purl.oclc.org/dsdl/schematron"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:cc="http://mlat.uzh.ch/2.0"
        exclude-result-prefixes="xs"
        version="2.0"
        xpath-default-namespace="http://www.tei-c.org/ns/1.0">
        
        
        <xsl:output method="text" encoding="UTF-8"/>
        
        <xsl:strip-space elements="*"/>
        <xsl:template match="text()"/>
        <xsl:template match="teiHeader"/>
        
 
    
    <xsl:template match="cc:s">
        <xsl:variable name="lemmas"
            select="string-join(cc:w[not(@lemma='@card@')]/@lemma, ' ')"/>
        
        <xsl:value-of select="@n"/>
        
        <xsl:if test="$lemmas != ''">
            <xsl:text> </xsl:text>
            <xsl:value-of select="$lemmas"/>
            <xsl:text>.</xsl:text>
        </xsl:if>
        
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
        
    </xsl:stylesheet>
