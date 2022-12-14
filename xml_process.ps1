Param(
  [string] $XMLPath,
  [string] $BookId,
  [string] $XMLSavePath
)

$xml = New-Object -TypeName XML
$xml.Load($XMLPath)

$xml | Select-Xml "//book[@id='$BookId']/author/name" | Foreach {$_.Node.set_InnerText('Varun Khatri')}

$xml.save("$XMLSavePath/books_edited.xml")
