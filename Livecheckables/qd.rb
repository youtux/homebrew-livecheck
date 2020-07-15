class Qd
  livecheck do
    url "https://www.davidhbailey.com/dhbsoftware/"
    regex(/href=.*?qd-([0-9.]+)\.t/)
  end
end
