class SaneBackends
  livecheck do
    url "http://www.sane-project.org/"
    regex(%r{href="source\.html">SANE-Backends-([0-9.]+)</a>})
  end
end
