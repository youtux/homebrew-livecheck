class Qd
  livecheck do
    url :homepage
    regex(/href=.*?qd-([0-9.]+)\.t/i)
  end
end
