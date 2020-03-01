class Vdirsyncer
  livecheck :url   => "https://github.com/pimutils/vdirsyncer/releases",
            :regex => %r{href=".*?/tag/([0-9\.]+)"}
end
