class Chuck
  livecheck do
    url "https://chuck.cs.princeton.edu/release/files/"
    regex(/href=.*?chuck-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
