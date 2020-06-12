class Tcping
  livecheck do
    url "https://github.com/mkirchner/tcping.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
