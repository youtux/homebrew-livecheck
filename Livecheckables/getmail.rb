class Getmail
  livecheck do
    url :homepage
    regex(/href=.*?getmail[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
