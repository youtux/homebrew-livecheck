class Rhino
  livecheck do
    url "https://github.com/mozilla/rhino/releases/latest"
    regex(%r{href=.*?/tag/.*?>Rhino (\d+(?:\.\d+)+)<}i)
  end
end
