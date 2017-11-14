class Nasm
  livecheck :url => "http://www.nasm.us/pub/nasm/releasebuilds/",
            :regex => %r{href="([0-9\.]+)/">}
end
