class Osquery
  livecheck :url => "https://github.com/facebook/osquery/releases",
            :regex => %r{latest.*?href="/facebook/osquery/tree/v?([0-9\.]+)}m
end
