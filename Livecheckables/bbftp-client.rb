class BbftpClient
  livecheck do
    url "http://software.in2p3.fr/bbftp/download.html"
    regex(/href=.*?bbftp-client[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
