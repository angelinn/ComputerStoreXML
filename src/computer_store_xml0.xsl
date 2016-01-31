<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
    
    <logical-units>
        <xsl:for-each select="/computer-store/parts/processors/processor">
            <cpu id="{@id}" available="{available}">
                <socket>
                    <xsl:value-of select="@socket"/>
                </socket>
                <model>
                    <xsl:value-of select="manufacturer"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="model"/>
                </model>
                <clock>
                    <xsl:value-of select="clock-frequency"/>
                    <xsl:text>mhz</xsl:text>
                </clock> 
                <cores>
                    <xsl:value-of select="threads/physical" />
                </cores>
                <has_video>
                    <xsl:value-of select="@integrated_video"/>
                </has_video>
                <cost>
                    <xsl:value-of select="price"/>
                </cost>
            </cpu>
        </xsl:for-each>
        <xsl:for-each select="/computer-store/parts/video-cards/video-card">
            <gpu id="{@id}" available="{available}">
                <model>
                    <xsl:value-of select="manufacturer"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="model"/>
                </model>
                <memory>
                    <xsl:value-of select="gpu_memory" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="gpu_memory/id(@type)"/>
                </memory>
                <bits>
                    <xsl:value-of select="bus-width"/>
                </bits>
                <cost>
                    <xsl:value-of select="price" />
                </cost>
            </gpu>
        </xsl:for-each>
    </logical-units>
    <data-holders>
        <xsl:for-each select="/computer-store/parts/ram-boards/ram-board">
            <ram id="{@id}" available="{available}">
                <company>
                    <xsl:value-of select="manufacturer" />
                </company>
                <gb>
                    <xsl:value-of select="memory"/>
                </gb>
                <mhz>
                    <xsl:value-of select="frequency"/>
                </mhz>
                <cost>
                    <xsl:value-of select="price"/>
                </cost>
            </ram>
        </xsl:for-each>
        <xsl:for-each select="/computer-store/parts/hard-drives/hard-drive">
            <drive id="{@id}" available="{available}">
                <type>
                    <xsl:value-of select="drive-memory/type"/>
                </type>
                <memory>
                    <xsl:value-of select="drive-memory/amount" />
                </memory>
                <speed>
                    <xsl:value-of select="speed"/>
                </speed>
                <bus>
                    <xsl:value-of select="@bus"/>
                </bus>
                <cost>
                    <xsl:value-of select="price" />
                </cost>
            </drive>
        </xsl:for-each>
    </data-holders>
    
    <logical-sockets>
        <xsl:for-each select="/computer-store/sockets/socket">
            <socket>
                <id>
                    <xsl:value-of select="@id"/>
                </id>
                <type>
                    <xsl:value-of select="text()"/>
                </type>
            </socket>
        </xsl:for-each>
    </logical-sockets>
    </xsl:template>
</xsl:stylesheet>