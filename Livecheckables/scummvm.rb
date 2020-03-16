class Scummvm
  livecheck :url   => "https://www.scummvm.org/frs/scummvm/",
            :regex => %r{href=.*?v?(\d+(?:\.\d+)+)/?["']}
end
