<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template name="video-cards">
        <xsl:for-each select="/computer-store/parts/video-cards/video-card">
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="images/gpu{position()}.jpg" alt="" />
                <h3><xsl:value-of select="manufacturer" />
                    <small>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="model" />
                    </small>
                </h3>
                <p>
                    <xsl:value-of select="gpu_memory" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="gpu_memory/id(@type)" />
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="available" />
                    <xsl:text> бройки - </xsl:text>
                    <xsl:value-of select="price" />
                </p>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="motherboards">
        <xsl:for-each select="/computer-store/parts/motherboards/motherboard">
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="images/board{position()}.jpg" alt="" />
                <h3><xsl:value-of select="manufacturer" />
                    <small>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="chipset" />
                    </small>
                </h3>
                <p>
                    <xsl:value-of select="id(@socket-id)" />
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="available" />
                    <xsl:text> бройки - </xsl:text>
                    <xsl:value-of select="price" />
                </p>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="hard-drives">
        <xsl:for-each select="/computer-store/parts/hard-drives/hard-drive">
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="images/cpu{position()}.jpg" alt="" />
                <h3><xsl:value-of select="manufacturer" />
                    <small><xsl:value-of select="model" /></small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
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
                    .img-center {
                    margin: 0 auto;
                    }
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
                            <h1 class="page-header">Хардуер
                                <small>XML Програмиране</small>
                            </h1>
                        </div>
                    </div>
                        
                        <!-- Team Members Row -->
                        <div class="row">
                            <xsl:call-template name="video-cards" />
                            <xsl:call-template name="motherboards" />
                        </div>
                        
                        <hr />
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