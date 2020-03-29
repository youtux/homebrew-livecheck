class BareosClient
  livecheck :url   => "https://github.com/bareos/bareos.git",
            :regex => %r{^Release/(\d+(?:\.\d+)+)$}i
end
