class Softhsm
  # We check the GitHub repo tags instead of https://dist.opendnssec.org/source/
  # since the aforementioned first-party URL has a tendency to lead to an
  # `execution expired` error.
  livecheck do
    url "https://github.com/opendnssec/SoftHSMv2.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
