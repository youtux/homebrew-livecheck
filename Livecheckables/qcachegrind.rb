class Qcachegrind
  livecheck :url   => "https://download.kde.org/stable/applications",
            :regex => %r{href="([0-9\.]+)/"}
end
