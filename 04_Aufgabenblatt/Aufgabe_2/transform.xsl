<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" />
    <xsl:template match="Contacts">
        <table class="Addresses">
            <tr>
                <th>Name</th>
                <th>Salutation</th>
            </tr>
            <xsl:apply-templates />
        </table>
    </xsl:template>
    <xsl:template match="Name">
        <tr>
            <td>
               <xsl:apply-templates select="Given" />
               <xsl:apply-templates select="Family" />
                <xsl:value-of select="./Suffix" />
            </td>
            <td>
                <xsl:value-of select="./Prefix" />
            </td>
        </tr>
    </xsl:template>
   <xsl:template match="Given">
    <xsl:value-of select="." />
    <xsl:text> </xsl:text>
   </xsl:template>
   <xsl:template match="Family">
    <xsl:value-of select="." />
    <xsl:text> </xsl:text>
   </xsl:template>
</xsl:stylesheet> 