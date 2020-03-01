class Ibex
  livecheck :url   => "http://ibex-lib.org/download",
            :regex => %r{href="http://www.ibex-lib.org/sites/default/files/ibex-([0-9\.]+)\.t}
end
