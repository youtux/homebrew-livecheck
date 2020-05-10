class Nrpe
  livecheck :regex => %r{url=.+?/nrpe-v?(\d+(?:\.\d+)+)\.t}
end
