class ClozureCl
  livecheck :url   => "https://github.com/Clozure/ccl/releases",
            :regex => %r{Latest.*?href="/Clozure/ccl/tree/v?([0-9\.]+)}m
end
