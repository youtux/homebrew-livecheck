class Conserver
  livecheck do
    url "https://github.com/conserver/conserver/releases"
    regex(%r{href="/conserver/conserver/tree/v?([0-9.]+)})
  end
end
