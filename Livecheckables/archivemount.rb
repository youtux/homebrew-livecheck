class Archivemount
  livecheck do
    url :homepage
    regex(/href=.*?archivemount-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
