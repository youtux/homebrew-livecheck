class Stk
  livecheck do
    url "https://ccrma.stanford.edu/software/stk/download.html"
    regex(%r{href=".*?/stk-([0-9.]+)\.t})
  end
end
