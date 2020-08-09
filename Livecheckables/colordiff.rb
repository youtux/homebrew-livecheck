class Colordiff
  livecheck do
    url :homepage
    regex(/href=.*?colordiff[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
