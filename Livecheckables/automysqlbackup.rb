class Automysqlbackup
  livecheck :regex => %r{url=.+?/automysqlbackup-v?(\d+(?:\.\d+)+(?:.rc\d+)?)\.t}i
end
