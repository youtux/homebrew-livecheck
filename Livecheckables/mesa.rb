class Mesa
  livecheck do
    url "https://archive.mesa3d.org"
    regex(/href=.*?mesa-(\d+(?:\.\d+)+)\.t/i)
  end
end
