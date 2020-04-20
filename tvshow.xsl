<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!--/* code from https://github.com/mikhail-cct/CA1-In-class-Demo*/
-->    
<!--it creates a table with Select,Title and Release as Head of the table-->   

<xsl:template match="/">           
<table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Best TV shows</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Title</th>
                            <th>Release</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--Cycles through each node in the XML file-->
                        <xsl:for-each select="/tvshow/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <!--generating an id for the item-->
                            <tr id="{position()}">
            
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="release" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>