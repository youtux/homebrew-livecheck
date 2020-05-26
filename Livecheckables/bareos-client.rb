class BareosClient
  livecheck do
    url "https://github.com/bareos/bareos.git"
    regex(%r{^Release/(\d+(?:\.\d+)+)$}i)
  end
end
