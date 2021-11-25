xpath -e '//*' document.xml
xmllint --schema schema.xsd document.xml --noout
xsltproc -o outputfile.html faculty.xsl faculty.xml
saxonb-xslt -o:outputfile.xml source.xml transform.xsl