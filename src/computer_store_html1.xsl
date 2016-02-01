<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template name="memory">
        <xsl:for-each select="/computer-store/memory-types/memory-type">
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="images/memory_{position()}.jpg" alt="" />
                </a>
                <h3>
                    <a href="#"><xsl:value-of select="text()" /></a>
                </h3>
            </div>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="socket">
        <xsl:for-each select="/computer-store/sockets/socket">
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="images/socket_{position()}.jpg" alt="" />
                </a>
                <h3>
                    <a href="#"><xsl:value-of select="text()" /></a>
                </h3>
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
                            <h1 class="page-header">Видове части
                                <small>XML Програмиране</small>
                            </h1>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6 portfolio-item">
                            <a href="#">
                                <img class="img-responsive" src="images/ram.jpg" alt="" />
                            </a>
                            <h3>
                                <a href="#">RAM Памети</a>
                            </h3>
                            <p>Различни видове DRAM памети!</p>
                        </div>
                        <div class="col-md-6 portfolio-item">
                            <a href="#">
                                <img class="img-responsive" src="images/cpus.jpg" alt="" />
                            </a>
                            <h3>
                                <a href="#">Процесори и дънни платки</a>
                            </h3>
                            <p>Предлагаме всякакви видове цокли.</p>
                        </div>
                        
                        <xsl:call-template name="memory" />
                        <xsl:call-template name="socket" />
                    </div>
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