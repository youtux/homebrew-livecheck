class Getmail
  livecheck do
    url :homepage
    regex(/getmail-(\d+(?:\.\d+)*)\.t/i)
  end
end
