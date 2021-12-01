<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="no" doctype-system="about:legacy-compat" />
    <xsl:template match="/*">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>Default View</title>
                <link rel="stylesheet" href="logRef.css" type="text/css" />
            </head>
            <body>
                <h1>Default View</h1>
                <div class="events">
                    <!-- <xsl:apply-templates /> -->
                    <xsl:for-each select="events/event">
                    test
                        <!-- <li><xsl:call-template name="event" /></li> -->
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
    <!-- <xsl:template match="event" name="event">
        test
    </xsl:template> -->
    <!-- <xsl:template match="event">
        <div class="event">
            <div class="event-header"><span>2016-05-24T11:59:14</span><span>entering</span><span>Clyde's
                    Minimarket</span></div>
            <div>
                <div class="event-agent">John Doe</div>
            </div>
        </div>
    </xsl:template> -->
    <xsl:template match="text()" />
</xsl:stylesheet> 