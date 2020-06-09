class Getmail
  livecheck do
    url :homepage
    regex(/getmail-(\d+(?:\.\d+)*)\.t/)
  end
end
