class SaneBackends
  livecheck do
    url :homepage
    regex(%r{href="source\.html">SANE-Backends-([0-9.]+)</a>})
  end
end
