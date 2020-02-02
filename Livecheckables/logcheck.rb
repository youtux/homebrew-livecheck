class Logcheck
  livecheck :url => "https://packages.debian.org/unstable/logcheck",
            :regex => %r{logcheck_([0-9,\.]+)\.tar}
end
