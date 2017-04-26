<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/Fotoalbum/uvodni_stranka">
      {
        <xsl:value-of select="fotka/autor/@id"/>
        <xsl:value-of select="fotka/komentare"/>
        <xsl:value-of select="moje_stranka/parametry/ucet/liked"/>

        <xsl:for-each select="fotka">
          <xsl:sort select="datum" order ="descending"/>
          <xsl:value-of select="autor/@id"/>
        </xsl:for-each>

        <xsl:for-each select="moje_stranka/parametry/nastaveni/jazyk">
          <xsl:choose>
              <xsl:when test="jazyk/vyberjaz">
                <xsl:value-of select="jazyky"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="jazyk"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      }
    </xsl:template>
</xsl:stylesheet>