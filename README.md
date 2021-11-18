xpath -e '//*' document.xml
xmllint --schema schema.xsd document.xml --noout
saxonb-xslt -o:outputfile.xml source.xml transform.xsl