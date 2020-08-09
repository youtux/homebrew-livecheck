class Bcrypt
  livecheck do
    url "http://bcrypt.sourceforge.net"
    strategy :page_match
    regex(/href=.*?bcrypt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
