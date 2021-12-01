<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" omit-xml-declaration="yes" />
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <xsl:apply-templates />
        <!-- <xsl:for-each select="order/item">
            <xsl:value-of select="quantity * price" />
        </xsl:for-each> -->
    </xsl:template>
    <xsl:template match="item" name="item">
        <xsl:param name="sum" />
        <!-- if first item, start recursion -->
        <xsl:if test="not(preceding-sibling::*)">
            <xsl:call-template name="item">
                <xsl:with-param name="item" select="quantity * price" />
            </xsl:call-template>
        </xsl:if>
        <!-- if last item, stop recursion -->
        <xsl:if test="not(following-sibling::*)">
            Result: <xsl:value-of select="$sum + quantity * price" />
        </xsl:if>
        <!-- else, continue recursion -->
        <xsl:call-template name="item">
            <xsl:with-param name="item" select="$sum + quantity * price" />
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet> 