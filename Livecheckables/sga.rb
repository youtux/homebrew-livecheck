class Sga
  livecheck :url => "https://github.com/jts/sga/releases",
            :regex => %r{href="/jts/sga/releases/tag/v([0-9\.]+)"}
end
