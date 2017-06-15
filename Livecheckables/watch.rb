class Watch
  livecheck :url => "https://gitlab.com/procps-ng/procps/tags",
            :regex => %r{/procps-ng/procps/repository/archive.zip\?ref=v([0-9.]*)}
end
