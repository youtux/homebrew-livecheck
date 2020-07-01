class Websocat
  livecheck do
    url :stable
    regex(/v([\d.]+$)/)
  end
end
