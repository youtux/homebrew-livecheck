class Knock
  livecheck :url   => "http://www.zeroflux.org/projects/knock",
            :regex => %r{The current version of knockd is <strong>([0-9\.]+)</strong>}
end
