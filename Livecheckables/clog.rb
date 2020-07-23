class Clog
  livecheck do
    url "https://gothenburgbitfactory.org"
    regex(%r{gothenburgbitfactory.org/download/clog-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
