class Unzip
  livecheck do
    regex(%r{url=.+?(?:%20)?v?(\d+(?:\.\d+)+)/unzip\d+\.t}i)
  end
end
