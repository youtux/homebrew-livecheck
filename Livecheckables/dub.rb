class Dub
  livecheck :url => "https://github.com/dlang/dub/releases",
            :regex => %r{href="/dlang/dub/releases/tag/v([0-9,\.]+)"}
end
