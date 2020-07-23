class Libbpg
  livecheck do
    url :homepage
    regex(/href=.*?libbpg-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
