class Chafa
  livecheck do
    url "https://hpjansson.org/chafa/releases/?C=M&O=D"
    regex(/href=.*?chafa-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
