class Netdata
  livecheck :url => "https://github.com/firehol/netdata/releases",
            :regex => %r{href="/firehol/netdata/tree/v?([0-9\.]+)}
end
