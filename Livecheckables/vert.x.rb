class VertX
  livecheck do
    url "https://vertx.io/download/"
    regex(/href=.*?vert\.x-v?(\d+(?:\.\d+)+)-full\.t/i)
  end
end
