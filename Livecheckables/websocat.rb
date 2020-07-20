class Websocat
  livecheck do
    url :stable
    regex(/v([\d.]+$)/i)
  end
end
