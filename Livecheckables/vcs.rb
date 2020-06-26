class Vcs
  livecheck do
    url "https://p.outlyer.net/files/vcs/?C=M&O=D"
    regex(/href=.*?vcs-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
