<xsl:transform
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs xsl"
  version="2.0"
  >
  <xsl:template match="/">Transformation result</xsl:template>
  <xsl:template match="text()"/>
</xsl:transform>