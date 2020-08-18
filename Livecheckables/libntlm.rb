class Libntlm
  livecheck do
    url "https://www.nongnu.org/libntlm/releases/"
    regex(/href=.*?libntlm[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
