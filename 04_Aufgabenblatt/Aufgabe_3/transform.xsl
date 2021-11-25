<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" omit-xml-declaration="yes" />
    <xsl:strip-space elements="*"/>
    <xsl:template match="article">
@article{<xsl:value-of select="doi" />,
    title = {<xsl:value-of select="title" />},
    author = {<xsl:for-each select="author">
        <xsl:value-of select="." /><xsl:if test="./following-sibling::author"><xsl:text> and </xsl:text></xsl:if>
    </xsl:for-each>},
    journal = {<xsl:value-of select="journal" />},
    volume = {<xsl:value-of select="volume" />},
    number = {<xsl:value-of select="number" />},
    pages = {<xsl:value-of select="pages-start" />--<xsl:value-of select="pages-start + pages-number" />},
    year = {<xsl:value-of select="date" />}
}
   </xsl:template>
</xsl:stylesheet> 