﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <TABLE width="770" STYLE="border:1px solid black">
        <TR style="font-size: 14px; font-family:Arial, Helvetica, sans-serif; font-weight:bold">
          <TD>Symbol</TD>
          <TD>Date</TD>
          <TD>Time</TD>
          <TD>Trade</TD>
          <TD>% Chg</TD>
          <TD>Bid</TD>
          <TD>Ask</TD>
          <TD>Volume</TD>
          <TD>High</TD>
          <TD>Low</TD>
        </TR>
        <xsl:for-each select="StockQuotes/Stock">
          <TR STYLE="font-family:Arial, Helvetica, sans-serif; font-size:14px; padding: 0px 2px">
            <TD>
              <xsl:value-of select="Symbol"/>
            </TD>
            <TD>
              <xsl:value-of select="Date" />
            </TD>
            <TD>
              <xsl:value-of select="Time" />
            </TD>
            <TD>
              <xsl:value-of select="Last" />
            </TD>
            <TD>
              <xsl:value-of select="Change" />
            </TD>
            <TD>
              <xsl:value-of select="Bid" />
            </TD>
            <TD>
              <xsl:value-of select="Ask" />
            </TD>
            <TD>
              <xsl:value-of select="Volume" />
            </TD>
            <TD>
              <xsl:value-of select="High" />
            </TD>
            <TD>
              <xsl:value-of select="Low" />
            </TD>
          </TR>
        </xsl:for-each>
      </TABLE>
    </html>
  </xsl:template>
</xsl:stylesheet>
