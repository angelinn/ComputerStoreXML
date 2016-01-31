<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        
    <packaged_motherboards>
        <xsl:for-each select="/computer-store/parts/motherboards/motherboard">
            <package>
                <socket>
                    <xsl:value-of select="@socket-id"/>
                </socket>
                <motherboard_manufacturer id="{@id}">
                    <xsl:value-of select="manufacturer"/>
                </motherboard_manufacturer>
                <cpu id="{@processor}">
                    <manufacturer>
                        <xsl:value-of select="id(@processor)/manufacturer"/>
                    </manufacturer>
                    <model>
                        <xsl:value-of select="id(@processor)/model" />
                    </model>
                    <clock_speed>
                        <xsl:value-of select="id(@processor)/clock-frequency"/>
                        <xsl:text>mhz</xsl:text>
                    </clock_speed>
                    <cores>
                        <xsl:value-of select="id(@processor)/threads/physical"/>
                    </cores>
                </cpu>
                <gpu>
                    <model id="{@video-card}">
                        <xsl:value-of select="id(@video-card)/model"/>
                    </model>
                    <memory>
                        <xsl:value-of select="id(@video-card)/gpu_memory"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="id(@video-card)/gpu_memory/id(@type)"/>
                    </memory>
                </gpu>
                <integrated_video>
                    <xsl:value-of select="id(@processor)/@integrated_video"/>
                </integrated_video>
                <directx_support>
                    <xsl:value-of select="id(@video-card)/directx"/>
                </directx_support>
                <hard_drive id="{@hard-drive}">
                    <manufacturer>
                        <xsl:value-of select="id(@hard-drive)/manufacturer"/>
                    </manufacturer>
                    <memory>
                        <xsl:value-of select="id(@hard-drive)/drive-memory/amount"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="id(@hard-drive)/drive-memory/type"/>
                    </memory>
                </hard_drive>
                <ram id="{@ram-memory}">
                    <type>
                        <xsl:value-of select="id(@ram-memory)/id(@type)"/>
                    </type>
                    <memory>
                        <xsl:value-of select="id(@ram-memory)/memory"/>
                    </memory>
                </ram>
            </package>
        </xsl:for-each>
        
    </packaged_motherboards>
    
    </xsl:template>
</xsl:stylesheet>