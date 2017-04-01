class Libosinfo < Formula
  livecheck :url => "https://releases.pagure.org/libosinfo/",
            :regex => /libosinfo-([\d.]+)\.tar\.gz/
end
