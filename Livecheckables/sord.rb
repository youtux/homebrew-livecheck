class Sord
  livecheck do
    url "https://download.drobilla.net"
    regex(/href=.*?sord-(\d+.\d+.\d+)\.t/i)
  end
end
