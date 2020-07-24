class Libtermkey
  livecheck do
    url :homepage
    regex(/href=.*?libtermkey-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
