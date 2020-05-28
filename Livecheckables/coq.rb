class Coq
  livecheck do
    url "https://github.com/coq/coq.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
