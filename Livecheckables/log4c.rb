class Log4c
  livecheck do
    url :stable
    regex(%r{url=.*?/log4c-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
