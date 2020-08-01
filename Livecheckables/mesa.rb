class Mesa
  livecheck do
    url "https://archive.mesa3d.org"
    regex(/href=.*?mesa[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
