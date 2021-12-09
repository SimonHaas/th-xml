<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:log="http://th-nuernberg.de/IN/log/0.1" xmlns:vc="urn:ietf:params:xml:ns:vcard-4.0" exclude-result-prefixes="xsl log vc">
    <xsl:import href="../Aufgabe_5/a/logRef.xsl" />
    <xsl:param name="sorting">ascending</xsl:param>
    <xsl:template match="log:events">
        <div class="events">
            <xsl:apply-templates select="log:event">
                <xsl:sort order="{$sorting}" select="@dateTime" />
            </xsl:apply-templates>
        </div>
    </xsl:template>
</xsl:stylesheet> 