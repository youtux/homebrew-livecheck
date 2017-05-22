class Libwpd
  livecheck :url => "http://dev-www.libreoffice.org/src/",
            :regex => /.*href=\"libwpd-([0-9\.\-]+)\.tar.[bgz2]+\"/
end
