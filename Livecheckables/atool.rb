class Atool
  livecheck do
    url "https://namesdir.com/mirrors/nongnu/atool/?C=M&O=D"
    regex(/href=.*?atool[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
