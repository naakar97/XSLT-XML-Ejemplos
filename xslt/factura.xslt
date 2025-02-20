<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:factura="http://www.facturae.es/Facturae/2007">
    <xsl:output method="html" encoding="UTF-8" doctype-public="SYSTEM" />

    <!-- Plantilla para el contenido de la página HTML -->
    <xsl:template match="/factura:FacturaE">
        <html>
            <head>
                <title>Factura Electrónica</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    table { width: 100%; border-collapse: collapse; }
                    th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
                    h1 { color: #333; }
                    .factura { margin: 20px 0; }
                </style>
            </head>
            <body>
                <h1>Factura Electrónica</h1>
                
                <!-- Datos Generales de la Factura -->
                <h2>Datos de la Factura</h2>
                <table>
                    <tr>
                        <th>Numero de Factura</th>
                        <td><xsl:value-of select="factura:DatosGenerales/factura:NumeroFactura" /></td>
                    </tr>
                    <tr>
                        <th>Fecha de Expedición</th>
                        <td><xsl:value-of select="factura:DatosGenerales/factura:FechaExpedicionFacturaEmisor" /></td>
                    </tr>
                    <tr>
                        <th>Total Factura</th>
                        <td><xsl:value-of select="factura:DatosGenerales/factura:TotalFactura" /></td>
                    </tr>
                </table>

                <!-- Datos del Emisor -->
                <h2>Datos del Emisor</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <td><xsl:value-of select="factura:Emisor/factura:Nombre" /></td>
                    </tr>
                    <tr>
                        <th>NIF</th>
                        <td><xsl:value-of select="factura:Emisor/factura:NIF" /></td>
                    </tr>
                    <tr>
                        <th>Dirección</th>
                        <td><xsl:value-of select="factura:Emisor/factura:Direccion" /></td>
                    </tr>
                    <tr>
                        <th>Ciudad</th>
                        <td><xsl:value-of select="factura:Emisor/factura:Ciudad" /></td>
                    </tr>
                    <tr>
                        <th>Código Postal</th>
                        <td><xsl:value-of select="factura:Emisor/factura:CodigoPostal" /></td>
                    </tr>
                </table>

                <!-- Datos del Receptor -->
                <h2>Datos del Receptor</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <td><xsl:value-of select="factura:Receptor/factura:Nombre" /></td>
                    </tr>
                    <tr>
                        <th>NIF</th>
                        <td><xsl:value-of select="factura:Receptor/factura:NIF" /></td>
                    </tr>
                    <tr>
                        <th>Dirección</th>
                        <td><xsl:value-of select="factura:Receptor/factura:Direccion" /></td>
                    </tr>
                    <tr>
                        <th>Ciudad</th>
                        <td><xsl:value-of select="factura:Receptor/factura:Ciudad" /></td>
                    </tr>
                    <tr>
                        <th>Código Postal</th>
                        <td><xsl:value-of select="factura:Receptor/factura:CodigoPostal" /></td>
                    </tr>
                </table>

                <!-- Productos -->
                <h2>Productos</h2>
                <table>
                    <tr>
                        <th>Descripción</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                    </tr>
                    <xsl:for-each select="factura:Productos/factura:Producto">
                        <tr>
                            <td><xsl:value-of select="factura:Descripcion" /></td>
                            <td><xsl:value-of select="factura:Cantidad" /></td>
                            <td><xsl:value-of select="factura:PrecioUnitario" /></td>
                            <td><xsl:value-of select="factura:Total" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
