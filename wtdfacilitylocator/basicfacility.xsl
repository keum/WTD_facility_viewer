<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="/">
  <html>
  <body>
    <h2>WTD Facility Locator Data</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th align="left">Label</th>
        <th align="left">Street</th>
        <th align="left">City</th>
	 <th align="left">State</th>
 	<th align="left">Zipcode</th>
 	<th align="left">Emergency Number</th>
       </tr>
      <xsl:for-each select="wtdFacility/facility">
      <xsl:sort select="LABEL"/>
      <tr>
        <td><xsl:value-of select="LABEL"/></td>
        <td><xsl:value-of select="STREET"/></td>
         <td><xsl:value-of select="CITY"/></td>
 	<td><xsl:value-of select="STATE"/></td>
 	<td><xsl:value-of select="ZIPCODE"/></td>
 	<td><xsl:value-of select="EMERGENCYN"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>




