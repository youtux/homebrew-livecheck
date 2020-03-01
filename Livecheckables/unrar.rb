class Unrar
  livecheck :url   => "https://www.rarlab.com/rar_add.htm",
            :regex => %r{href="rar/unrarsrc-([0-9,\.]+).tar}
end
