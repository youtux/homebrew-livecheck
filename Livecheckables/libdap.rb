class Libdap
  livecheck do
    url "https://www.opendap.org/pub/source/"
    regex(/href=.*?libdap-([0-9.]+)\.t/i)
  end
end
