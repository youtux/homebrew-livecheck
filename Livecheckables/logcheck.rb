class Logcheck
  livecheck do
    url "https://packages.debian.org/unstable/logcheck"
    regex(/logcheck_([0-9,.]+)\.t/i)
  end
end
