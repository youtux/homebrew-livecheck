class Cairo
  livecheck do
    url "https://cairographics.org/releases/?C=M&O=D"
    regex(/href=.*?[^r]cairo-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
