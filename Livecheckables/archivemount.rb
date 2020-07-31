class Archivemount
  livecheck do
    url :homepage
    regex(/href=.*?archivemount[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
