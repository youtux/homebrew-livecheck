class Libwebsockets
  livecheck do
    url "https://github.com/warmcat/libwebsockets"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
