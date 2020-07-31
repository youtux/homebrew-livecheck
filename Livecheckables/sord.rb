class Sord
  livecheck do
    url "https://download.drobilla.net"
    regex(/href=.*?sord[._-]v?(\d+.\d+.\d+)\.t/i)
  end
end
