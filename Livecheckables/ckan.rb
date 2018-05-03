class Ckan
  livecheck :url => "https://github.com/KSP-CKAN/CKAN/releases",
            :regex => %r{Latest.*?href="/KSP-CKAN/CKAN/tree/v?([0-9\.]+)}m
end
