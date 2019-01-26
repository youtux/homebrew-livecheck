class SpiceProtocol
  livecheck :url => "https://www.spice-space.org/download/releases/",
            :regex => /spice-protocol-([\d.]+)\.tar\.bz2/
end
