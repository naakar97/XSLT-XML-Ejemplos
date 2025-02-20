<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-public="SYSTEM" />

    <!-- Plantilla para el contenido de la página HTML -->
    <xsl:template match="/productos">
        <html>
            <head>
                <title>Lista de Productos</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    table { width: 100%; border-collapse: collapse; }
                    th, td { padding: 8px; border: 1px solid #ddd; text-align: left; }
                    h1 { color: #333; }
                    .producto { margin: 20px 0; }
                </style>
            </head>
            <body>
                <h1>Lista de Productos</h1>

                <!-- Tabla de productos -->
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Precio</th>
                        <th>Categoría</th>
                    </tr>
                    <xsl:for-each select="producto">
                        <tr>
                            <td><xsl:value-of select="id" /></td>
                            <td><xsl:value-of select="nombre" /></td>
                            <td><xsl:value-of select="descripcion" /></td>
                            <td><xsl:value-of select="precio" /></td>
                            <td><xsl:value-of select="categoria" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
