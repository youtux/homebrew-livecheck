class Jbig2dec
  livecheck :url   => "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/latest",
            :regex => %r{href=.+?/jbig2dec-v?(\d+(?:\.\d+)+)\.t}
end
