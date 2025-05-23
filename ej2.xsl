<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Catalog of Hobbies</title>
      </head>
      <body>
        <h1>Catalog of Hobbies</h1>
        <xsl:for-each select="/hobbies/hobby">
          <h2><xsl:value-of select="name"/></h2>
          <p><xsl:value-of select="description"/></p>
          <span></span>
          <xsl:if test="@difficulty">
            <p><xsl:text>Difficulty:</xsl:text><xsl:value-of select="@difficulty"></xsl:value-of></p>
          </xsl:if>
          <p><xsl:text>Popularity:</xsl:text><xsl:value-of select="popularity"/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>