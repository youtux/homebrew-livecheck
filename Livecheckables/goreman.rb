class Goreman
  livecheck do
    url "https://github.com/mattn/goreman.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
