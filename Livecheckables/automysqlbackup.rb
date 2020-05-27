class Automysqlbackup
  livecheck do
    regex(%r{url=.+?/automysqlbackup-v?(\d+(?:\.\d+)+(?:.rc\d+)?)\.t}i)
  end
end
