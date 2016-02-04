class SpiceProtocol < Formula
  livecheck :url => "http://www.spice-space.org/download/releases/",
            :regex => /spice-protocol-([\d.]+)\.tar\.bz2/
end
