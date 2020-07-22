class Libdap
  livecheck do
    url "https://www.opendap.org/pub/source/"
    regex(/href=.*?libdap-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
