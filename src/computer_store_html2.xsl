<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template name="hard-drives">
        <xsl:for-each select="/computer-store/parts/hard-drives/hard-drive">
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <countNo>
                            <img class="img-responsive" src="images/hdd_{position()}.jpg" />
                        </countNo>
                    </a>
                </div>
                <div class="col-md-5">
                    <h3><xsl:value-of select="manufacturer" /></h3>
                    <h4>
                        <xsl:value-of select="drive-memory/amount" />
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="drive-memory/type" />
                    </h4>
                    <br />
                    <xsl:if test="speed != 'няма'">
                    <p>Скорост: <xsl:value-of select="speed" /></p>
                    </xsl:if>
                    <p>Размер: <xsl:value-of select="size" /></p>        
                    <p>Съвместим с лаптоп: <xsl:value-of select="@laptop_compatible" /></p>       
                    <p>Налични: <xsl:value-of select="available" /></p>              
                    <p>Връзка: <xsl:value-of select="@bus" /></p>         
                    <p>Цена: <xsl:value-of select="price" /></p>        
                </div>
            </div>
            <hr />
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="ram-boards">
        <xsl:for-each select="/computer-store/parts/ram-boards/ram-board">
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <countNo>
                            <img class="img-responsive" src="images/ram_{position()}.jpg" />
                        </countNo>
                    </a>
                </div>
                <div class="col-md-5">
                    <h3><xsl:value-of select="manufacturer" /></h3>
                    <h4>
                        <xsl:value-of select="drive-memory/amount" />
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="drive-memory/type" />
                    </h4>
                    <br />
                    <p>Памет: <xsl:value-of select="memory" /></p>        
                    <p>Тип: <xsl:value-of select="id(@type)" /></p>               
                    <p>Честота: <xsl:value-of select="frequency" /></p>           
                    <p>Канал: <xsl:value-of select="channel" /></p>          
                    <p>Налични: <xsl:value-of select="available" /></p>     
                    <p>Цена: <xsl:value-of select="price" /></p>        
                </div>
            </div>
            <hr />
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <meta name="description" content=""/>
                <meta name="author" content=""/>
                
                <title>XML Програмиране - Компютърен магазин</title>
                <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
                <style>
                    body   { padding-top: 70px; }
                    footer { margin: 50px 0;    }
                </style>
            </head>
            
            <body>
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">XML Програмиране</a>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Компютърен магазин
                                <small>XML Програмиране</small>
                            </h1>
                        </div>
                    </div>
                    
                    <xsl:call-template name="hard-drives" />
                    <xsl:call-template name="ram-boards" />
                    
                    <footer>
                        <div class="row">
                            <div class="col-lg-12">
                                <p>XML Програмиране 2016 - Анджелин Неделчев</p>
                            </div>
                        </div>
                    </footer>
                    
                </div>
                <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>