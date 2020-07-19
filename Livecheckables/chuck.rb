class Chuck
  livecheck do
    url "https://chuck.cs.princeton.edu/release/files/"
    regex(/href=.*?chuck-([0-9.]+)\.t/i)
  end
end
