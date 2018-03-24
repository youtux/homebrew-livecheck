class Watch
  livecheck :url => "https://gitlab.com/procps-ng/procps/tags",
            :regex => %r{href="/procps-ng/procps/tags/v([0-9\.]+)"}
end
