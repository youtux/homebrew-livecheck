class Oce
  livecheck :url => "https://github.com/tpaviot/oce/releases",
            :regex => %r{href="/tpaviot/oce/tree/OCE-([0-9\.]+)"}
end
