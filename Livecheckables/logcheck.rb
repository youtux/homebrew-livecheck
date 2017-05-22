class Logcheck
  livecheck :url => "https://packages.debian.org/unstable/logcheck",
            :regex => %r{href="http://http.debian.net/debian/pool/main/l/logcheck/logcheck_([0-9,\.]+)\.tar}
end
