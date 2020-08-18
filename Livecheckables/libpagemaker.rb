class Libpagemaker
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/href=["']?libpagemaker[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
