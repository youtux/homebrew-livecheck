class Bfg
  livecheck do
    url "https://github.com/rtyley/bfg-repo-cleaner.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
