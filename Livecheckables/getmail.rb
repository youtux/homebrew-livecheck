class Getmail
  livecheck do
    url :homepage
    regex(/getmail[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
