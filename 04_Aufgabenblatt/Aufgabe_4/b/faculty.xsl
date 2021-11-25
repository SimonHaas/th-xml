<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="no" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" />
    <xsl:template match="/*">
        <html>
            <head>
                <title>
                    <xsl:value-of select="name()" />
                </title>
            </head>
            <body>
                <h1>Our faculty</h1>
                <h2>Offered courses</h2>
                <ul>
                    <xsl:for-each select="offers/course">
                        <li><xsl:call-template name="course" /></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="course" name="course">
        <xsl:value-of select="@name" />
        held by
        <xsl:value-of select="@heldby" />
    </xsl:template>
    <xsl:template match="text()" />
</xsl:stylesheet> 