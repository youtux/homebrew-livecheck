class Cairo
  livecheck do
    url "https://cairographics.org/releases/?C=M&O=D"
    regex(%r{href=(?:["']?|.*?/)cairo-v?(\d+\.\d*[02468](?:\.\d+)*)\.t}i)
  end
end
