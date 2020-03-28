class DocbookXsl
  livecheck :url   => "https://github.com/docbook/xslt10-stylesheets.git",
            :regex => %r{^release\/(\d+(?:\.\d+)+)$}i
end
