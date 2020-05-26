class Nng
  livecheck do
    url "https://github.com/nanomsg/nng.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
