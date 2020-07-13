class MidnightCommander
  livecheck do
    url "http://ftp.midnight-commander.org"
    regex(/href=.*?mc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
