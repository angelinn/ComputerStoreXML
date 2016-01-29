<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text" indent="no" />
    
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:template match="/">

######################
# Компютърен магазин #
######################

Процесори
----------
        <xsl:value-of select="$newline"/>
        
        <xsl:for-each select="/computer-store/parts/processors/processor">
            <xsl:value-of select="manufacturer"/> 
            <xsl:text> </xsl:text>
            <xsl:value-of select="model"/>
            
            Архитектура:     <xsl:value-of select="architecture"/>
            Тактова честота: <xsl:value-of select="clock-frequency"></xsl:value-of>
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
