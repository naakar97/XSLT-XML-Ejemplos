Aqui fusionamos la estrucutra del xslt con la estructura de datos de xml y juntos se unen papra hacer un html
Como hacerlo:

Ruta a los archivos (usando rutas relativas)
$xmlPath = ".\factura.xml"  # Archivo XML en la misma carpeta
$xsltPath = ".\transformacion.xslt"  # Archivo XSLT en la misma carpeta
$outputPath = ".\factura.html"  # Archivo de salida en la misma carpeta

Cargar el archivo XML
$xml = New-Object System.Xml.XmlDocument
$xml.Load($xmlPath)

Cargar el archivo XSLT
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform
$xslt.Load($xsltPath)

Crear un escritor para el archivo de salida
$writer = New-Object System.IO.StreamWriter($outputPath)

Aplicar la transformación XSLT al XML
$xslt.Transform($xml, $null, $writer)

Cerrar el escritor
$writer.Close()

Write-Host "Transformación completada. El archivo HTML se ha guardado en: $outputPath"
y este comando siguiente para que veas la estructura general: Get-ChildItem

SI ESTAN EN LA CARPETA SERIA: 

# Definir las rutas correctas para los archivos
$xmlPath = ".\xml\productos.xml"  # Ruta al archivo XML en la carpeta xml
$xsltPath = ".\xslt\productos_transformacion.xslt"  # Ruta al archivo XSLT en la carpeta xslt
$outputPath = ".\salida\factura.html"  # Ruta al archivo HTML de salida en la carpeta salida

# Cargar el archivo XML
$xml = New-Object System.Xml.XmlDocument
$xml.Load($xmlPath)

# Cargar el archivo XSLT
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform
$xslt.Load($xsltPath)

# Crear un escritor para el archivo de salida
$writer = New-Object System.IO.StreamWriter($outputPath)

# Aplicar la transformación XSLT al XML
$xslt.Transform($xml, $null, $writer)

# Cerrar el escritor
$writer.Close()

Write-Host "Transformación completada. El archivo HTML se ha guardado en: $outputPath"
