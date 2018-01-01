class Pjproject
  livecheck :url => "http://www.pjsip.org/download.htm",
            :regex => %r{href=".*?/release-([0-9\.]+)">}
end
