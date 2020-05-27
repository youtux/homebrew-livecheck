class Gqview
  livecheck do
    regex(%r{url=.+?/gqview/[^/]+/gqview-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
