class Cairomm
  livecheck do
    url "https://cairographics.org/releases/"
    regex(/href=.*?cairomm-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
