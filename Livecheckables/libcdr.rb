class Libcdr
  livecheck :url => "https://dev-www.libreoffice.org/src/",
            :regex => /.*href=\"libcdr-([0-9\.\-]+)\.t/
end
