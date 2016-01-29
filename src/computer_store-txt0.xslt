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
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="/computer-store/parts/processors/processor">
            <xsl:value-of select="manufacturer"/> 
            <xsl:text> </xsl:text>
            <xsl:value-of select="model"/>
-----------------
            <xsl:value-of select="$newline"/>
            Архитектура:     <xsl:value-of select="architecture"/>
            Цокъл:           <xsl:value-of select="id(@socket)"/>
            Тактова честота: <xsl:value-of select="clock-frequency" /> мега херца 
            Кеш нива: <xsl:value-of select="cache/levels" />
            Памет, достъпна на <xsl:value-of select="cache/levels" /> ниво: <xsl:value-of select="cache/memory" />
            Ядра: <xsl:value-of select="threads/physical" />
            Нишки: <xsl:value-of select="threads/logical" />
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
        
РАМ памети:
-------------
        <xsl:value-of select="$newline"/>
        
        <xsl:for-each select="/computer-store/parts/ram-boards/ram-board">
            <xsl:value-of select="manufacturer"/>
-----------------
            <xsl:value-of select="$newline"/>
            Тип: <xsl:value-of select="id(@type)"/>
            Памет: <xsl:value-of select="memory"/>
            Честота: <xsl:value-of select="frequency"/>
            Kанал: <xsl:value-of select="channel"/>
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
        
Видео карти:
----------
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="/computer-store/parts/video-cards/video-card">
            <xsl:value-of select="manufacturer"/> 
            <xsl:text> </xsl:text>
            <xsl:value-of select="model"/>
-----------------
            <xsl:value-of select="$newline"/>
            Памет тип: <xsl:value-of select="gpu_memory/id(@type)"/>
            Размер: <xsl:value-of select="gpu_memory"/>
            Ширина на шината: <xsl:value-of select="bus-width"/>
            Пропускателен размер: <xsl:value-of select="bandwidth"/>
            Microsoft DirectX: <xsl:value-of select="directx"/>
            Брой шейдъри: <xsl:value-of select="shaders"/>
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
        
Твърди дискове:
-------------
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="/computer-store/parts/hard-drives/hard-drive">
            <xsl:value-of select="manufacturer"/>
-----------------
            <xsl:value-of select="$newline"/>
            Тип памет: <xsl:value-of select="drive-memory/type"/>
            Размер: <xsl:value-of select="drive-memory/amount"/>
            Скорост: <xsl:value-of select="speed"/>
            Връзка: <xsl:value-of select="@bus"/>
            Съвместим с лаптоп: <xsl:value-of select="@laptop-compatible"/>
            Големина: <xsl:value-of select="size"/>
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
        
Дънни платки:
-------------
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="/computer-store/parts/motherboards/motherboard">
            <xsl:value-of select="manufacturer"/>
------------------
            <xsl:value-of select="$newline"/>
            Чипсет: <xsl:value-of select="chipset"/>
            Цокъл: <xsl:value-of select="id(@socket-id)"/>
            ---------------------------------            
            Наличност:  <xsl:value-of select="available"/> бр.
            Цена:       <xsl:value-of select="price"/>
            ---------------------------------
            Препоръчани части
            <xsl:value-of select="$newline"/>
            Процесор: <xsl:value-of select="id(@processor)/model"/>
            Видео карта: <xsl:value-of select="id(@video-card)/model"/>
            Памет: <xsl:value-of select="id(@ram-memory)/manufacturer"/>
            Твърд диск: <xsl:value-of select="id(@hard-drive)/manufacturer"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
