class Burp
  livecheck do
    url "https://burp.grke.org/download.html"
    regex(/<li>([0-9\.]+): Stable/)
  end
end
