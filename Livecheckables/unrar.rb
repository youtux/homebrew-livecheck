class Unrar
  livecheck :url => "http://www.rarlab.com/rar_add.htm",
            :regex => %r{href="http://www.rarlab.com/rar/unrarsrc-([0-9,\.]+).tar}
end
