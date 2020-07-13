class Stk
  livecheck do
    url "https://ccrma.stanford.edu/software/stk/download.html"
    regex(%r{href=.*?stk[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
