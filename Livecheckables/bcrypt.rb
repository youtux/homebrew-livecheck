class Bcrypt
  livecheck do
    url "http://bcrypt.sourceforge.net"
    regex(/href=.*?bcrypt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
