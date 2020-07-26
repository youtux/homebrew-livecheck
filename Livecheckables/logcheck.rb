class Logcheck
  livecheck do
    url "https://packages.debian.org/unstable/logcheck"
    regex(/logcheck_v?(\d+(?:\.\d+)+)\.t/i)
  end
end
