type input.htm | docker run --rm -i harbor.informatik.fh-nuernberg.de/schneider/tidy --doctype transitional --output-xhtml yes --char-encoding utf8 --newline lf --clean yes --indent auto --vertical-space yes --tidy-mark no --wrap 0 -iqu > output.xhtml