class Masscan
  livecheck do
    url "https://github.com/robertdavidgraham/masscan/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
