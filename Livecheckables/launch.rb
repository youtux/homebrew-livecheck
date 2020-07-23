class Launch
  livecheck do
    url "https://sabi.net/nriley/software/"
    regex(/href=.*?launch-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
