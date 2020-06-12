class Libstfl
  livecheck do
    url :homepage
    regex(/href=.*?stfl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
