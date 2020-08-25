class Pypy3
  livecheck do
    url "https://downloads.python.org/pypy/"
    regex(/href=.*?pypy3(?:\.\d+)*[._-]v?(\d+(?:\.\d+)+)-src\.t/i)
  end
end
