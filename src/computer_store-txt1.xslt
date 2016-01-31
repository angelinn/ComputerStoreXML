<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text" indent="no" />
    
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="whitespace">
        <xsl:text> </xsl:text>
    </xsl:variable>
    
    <xsl:template match="/">
   
######################
# Компютърен магазин #
######################
    <xsl:value-of select="$newline" />
    <xsl:value-of select="$newline" />   
    <xsl:text>Видове налични процесорни цокли:</xsl:text> 
    <xsl:value-of select="$newline" />
    <xsl:for-each select="/computer-store/sockets">
        <xsl:value-of select="socket" />
    </xsl:for-each>
        
    <xsl:value-of select="$newline" />
    <xsl:value-of select="$newline" />
        
    <xsl:text>Налични процесори и дънни платки с такива цокли:</xsl:text> 
    <xsl:for-each select="/computer-store/sockets">
        <xsl:variable name="socket">
            <xsl:value-of select="socket" />
        </xsl:variable>
        <xsl:value-of select="$newline" />
        
        <xsl:for-each select="/computer-store/parts/processors/processor">
            <xsl:if test="contains($socket, id(@socket))">
                <xsl:text>[</xsl:text>
                <xsl:value-of select="id(@socket)" />
                <xsl:text>]</xsl:text>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="manufacturer" />
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="model" /> - <xsl:value-of select="price" />
                <xsl:value-of select="$newline"></xsl:value-of>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="/computer-store/parts/motherboards/motherboard">
            <xsl:if test="contains($socket, id(@socket-id))">
                <xsl:text>[</xsl:text>
                <xsl:value-of select="id(@socket-id)" />
                <xsl:text>]</xsl:text>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="manufacturer" />
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="chipset" /> - <xsl:value-of select="price" />
                <xsl:value-of select="$newline"></xsl:value-of>
            </xsl:if>
        </xsl:for-each>
    </xsl:for-each>
        
    <xsl:value-of select="$newline" />
    <xsl:text>Налични типове памет:</xsl:text>
    <xsl:value-of select="$newline" />
    <xsl:for-each select="/computer-store/memory-types">
        <xsl:variable name="memory">
            <xsl:value-of select="memory-type" />
        </xsl:variable>
        
        <xsl:value-of select="$memory"></xsl:value-of>
        <xsl:value-of select="$newline" />
        <xsl:value-of select="$newline" />
        <xsl:text>Налични платки от тези типове памет (не съдържа графични карти):</xsl:text> 
        <xsl:value-of select="$newline" />
        <xsl:for-each select="/computer-store/parts/ram-boards/ram-board">
            <xsl:if test="contains($memory, id(@type))">
                <xsl:text>[</xsl:text>
                <xsl:value-of select="id(@type)" />
                <xsl:text>]</xsl:text>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="manufacturer" /> - <xsl:value-of select="price" />
                <xsl:value-of select="$newline" />
            </xsl:if>
        </xsl:for-each>
    </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>