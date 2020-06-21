class JdnssecTools
  livecheck do
    url "https://github.com/dblacka/jdnssec-tools/releases/latest"
    regex(%r{href=.+?/jdnssec-tools-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
