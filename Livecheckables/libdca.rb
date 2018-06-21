class Libdca
  livecheck :url => "https://www.videolan.org/developers/libdca.html",
            :regex => %r{Current release is <a href=".*?/libdca-([0-9\.]+)\.t}
end
