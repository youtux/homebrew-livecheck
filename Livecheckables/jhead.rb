class Jhead
  livecheck do
    url :homepage
    regex(/href=.*?jhead[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
