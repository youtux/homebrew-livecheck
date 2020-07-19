class Archivemount
  livecheck do
    url :homepage
    regex(/href=.*?archivemount-([0-9.]+)\.t/i)
  end
end
