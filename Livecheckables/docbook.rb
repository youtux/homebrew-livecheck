class Docbook
  livecheck :url => "https://docbook.org/xml/",
            :regex => %r{href="(\d+(?:\.\d+)+)/?"}
end
