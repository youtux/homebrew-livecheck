class Libwpg
  livecheck :url   => "https://dev-www.libreoffice.org/src/",
            :regex => /.*href=\"libwpg-([0-9\.\-]+)\.t/
end
