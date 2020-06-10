class Libcello
  livecheck do
    url :homepage
    regex(%r{href=".*?/libCello-([0-9.]+)\.t.*?>Download})
  end
end
