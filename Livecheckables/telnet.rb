class Telnet
  livecheck do
    url "https://opensource.apple.com/tarballs/remote_cmds/"
    regex(/href=.*?remote_cmds-v?(\d+(?:\.\d+)*)\.t/i)
  end
end
