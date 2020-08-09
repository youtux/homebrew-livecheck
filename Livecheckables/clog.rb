class Clog
  livecheck do
    url "https://gothenburgbitfactory.org"
    regex(/href=.*?clog[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
