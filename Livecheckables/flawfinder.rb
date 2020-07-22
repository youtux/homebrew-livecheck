class Flawfinder
  livecheck do
    url :homepage
    regex(/href=.*?flawfinder-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
