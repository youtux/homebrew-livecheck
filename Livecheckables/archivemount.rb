class Archivemount
  livecheck do
    url :homepage
    regex(%r{href=".*?/archivemount-([0-9.]+)\.t})
  end
end
