class Dnsperf
  livecheck :url => "https://nominum.com/measurement-tools/",
            :regex => %r{href="ftp://ftp.nominum.com/pub/nominum/dnsperf/([0-9,\.]+)/.*-src-}
end
