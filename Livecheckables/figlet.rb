class Figlet
  livecheck do
    url "http://ftp.figlet.org/pub/figlet/program/unix/"
    regex(/href=.*?figlet[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
