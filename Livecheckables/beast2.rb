class Beast2
  livecheck :url => "https://github.com/CompEvol/beast2/releases",
            :regex => %r{href="/CompEvol/beast2/tree/v([0-9\.]+)"}
end
