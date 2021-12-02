<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:log="http://th-nuernberg.de/IN/log/0.1">
    <xsl:output method="html" indent="no" encoding="utf-8" doctype-system="about:legacy-compat" />
    <xsl:variable name="title">Default View</xsl:variable>
    <xsl:variable name="stylesheet">logRef.css</xsl:variable>
    <xsl:template match="/*">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>
                    <xsl:value-of select="$title" />
                </title>
                <link rel="stylesheet" href="{$stylesheet}" type="text/css" />
            </head>
            <body>
                <h1>
                    <xsl:value-of select="$title" />
                </h1>
                <xsl:apply-templates select="log:events" />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="log:events">
        <div class="events">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    <xsl:template match="log:event">
        <div class="event">
            <div class="event-header">
                <span>
                    <xsl:value-of select="@dateTime" />
                </span>
                <span>
                    <xsl:value-of select="@actionRef" />
                </span>
                <span>
                    <xsl:value-of select="//log:entity[@id=current()/@locationRef]/@name" />
                </span>
            </div>
            <div>
                <xsl:apply-templates />
            </div>
        </div>
    </xsl:template>
    <xsl:template match="log:agentRef">
        <div class="event-agent">
            <xsl:apply-templates select="//log:entity[@id=current()]" />
        </div>
    </xsl:template>
    <xsl:template match="log:objectRef">
        <div class="event-object">
            <xsl:apply-templates select="//log:entity[@id=current()]" />
        </div>
    </xsl:template>
    <xsl:template match="log:entity">
        <xsl:choose>
            <xsl:when test="*">
                <xsl:apply-templates />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@name" />
            </xsl:otherwise>
        </xsl:choose>
        </xsl:template>
    <xsl:template match="text()" />
</xsl:stylesheet> 