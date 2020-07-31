class Libidn2
  livecheck do
    url "https://ftp.gnu.org/gnu/libidn/"
    regex(/href=.*?libidn2[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
