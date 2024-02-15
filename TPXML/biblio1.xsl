<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblio</title>
            </head>
            <body>
                <h3>Liste des etudiats</h3>
                <xsl:for-each select="/BIBLIO/ETUDIANT">
                    <ul>
                        <li>Code : <xsl:value-of select="@code"/></li>
                        <li>Code : <xsl:value-of select="@nom"/></li>
                        <li>Code : <xsl:value-of select="@age"/></li>
                    </ul>
                    <table border="1" width="75%">
                        <tr><!--ligne-->
                            <th>Id</th>
                            <th>Titre</th>
                            <th>Date</th>
                            <th>Rendu</th>
                        </tr>
                        <xsl:for-each select="LIVRE">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="@titre"/></td>
                                <td><xsl:value-of select="@dateEmprunt"/></td>
                                <td><xsl:value-of select="@rendu"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>