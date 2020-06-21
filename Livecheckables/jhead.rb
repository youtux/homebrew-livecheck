class Jhead
  livecheck do
    url :homepage
    regex(/href=.*?jhead-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
