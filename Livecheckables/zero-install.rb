class ZeroInstall
  livecheck do
    url "https://github.com/0install/0install.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
