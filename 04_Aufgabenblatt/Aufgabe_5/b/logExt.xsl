<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:log="http://th-nuernberg.de/IN/log/0.1" xmlns:vc="urn:ietf:params:xml:ns:vcard-4.0" exclude-result-prefixes="xsl log vc">
    <xsl:import href="../a/logRef.xsl" />
    <xsl:variable name="title">Custom View</xsl:variable>
    <xsl:variable name="stylesheet">logExt.css</xsl:variable>
    <xsl:template match="vc:vcard">
        <div class="vcard">
            <div>Full name: <xsl:value-of select="vc:fn" />
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet> 