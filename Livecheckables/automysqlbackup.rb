class Automysqlbackup
  livecheck do
    url :stable
    regex(%r{url=.+?/automysqlbackup-v?(\d+(?:\.\d+)+(?:.rc\d+)?)\.t}i)
  end
end
