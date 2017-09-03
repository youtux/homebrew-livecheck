class Lz4
  livecheck :url => "https://github.com/lz4/lz4/releases",
            :regex => %r{href="/lz4/lz4/releases/tag/v([0-9\.]+)"}
end
