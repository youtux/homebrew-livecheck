class JdnssecTools
  livecheck do
    url "https://github.com/dblacka/jdnssec-tools/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end
end
