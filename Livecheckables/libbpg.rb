class Libbpg
  livecheck do
    url :homepage
    regex(/href=.*?libbpg-([0-9.]+)\.t/i)
  end
end
