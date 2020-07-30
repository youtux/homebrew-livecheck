class Automysqlbackup
  livecheck do
    url :stable
    regex(%r{url=.*?/automysqlbackup[._-]v?(\d+(?:\.\d+)+(?:.rc\d+)?)\.t}i)
  end
end
