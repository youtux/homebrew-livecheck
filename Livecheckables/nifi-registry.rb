class NifiRegistry
  livecheck :url => "http://apache.claz.org/nifi/nifi-registry/",
            :regex => %r{href="nifi-registry-([0-9\.]+)/}
end
