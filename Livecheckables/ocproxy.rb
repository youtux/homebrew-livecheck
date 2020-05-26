class Ocproxy
  livecheck do
    url "https://github.com/cernekee/ocproxy.git"
    regex(/^v?(\d+(?:\.\d{1,3})+)$/)
  end
end
