class Rsync
  livecheck do
    url "https://rsync.samba.org/ftp/rsync/?C=M&O=D"
    regex(/href="rsync-([\d\.]+)\.tar\.gz"/)
  end
end
