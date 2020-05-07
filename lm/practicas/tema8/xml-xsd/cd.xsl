﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<style>
table {
 border: 1px solid red;
}
tr {
 background-color: #4CAF50;
 text-align: left;
}
</style>
</head>
<body>
 <h2>My CD Collection</h2>
 <table>
 <tr >
 <th>Title</th>
 <th>Artist</th>
 <th>Price</th>
 </tr>
 <xsl:for-each select="catalog/cd">
 <xsl:choose>
       <xsl:when test="price &lt;10">
       <tr bgcolor="blue">
       <td><xsl:value-of select="title"/></td>
       <td><xsl:value-of select="artist"/></td>
       <td><xsl:value-of select="price"/></td>
       </tr>
       </xsl:when>
       <xsl:when test="price &gt;10 and price &lt;20">
       <tr bgcolor="green">
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="price"/></td>
      </tr>
       </xsl:when>
       <xls:otherwise>
       <tr bgcolor="red">
       <td><xsl:value-of select="title"/></td>
       <td><xsl:value-of select="artist"/></td>
       <td><xsl:value-of select="price"/></td>
       </tr>
       </xls:otherwise>
 </xsl:choose>
 </xsl:for-each>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
 