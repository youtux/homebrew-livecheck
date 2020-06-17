class Lxc
  livecheck do
    url "https://linuxcontainers.org/lxd/downloads/"
    regex(/href=.*?lxd-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
