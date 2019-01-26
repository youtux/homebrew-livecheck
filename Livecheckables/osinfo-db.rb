class OsinfoDb < Formula
  livecheck :url => "https://releases.pagure.org/libosinfo/",
            :regex => /osinfo-db-([\d.]+)\.tar\.xz/
end
