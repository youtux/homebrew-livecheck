class Mpc
  livecheck do
    url "https://www.musicpd.org/download/mpc/0/"
    regex(/href=.*?mpc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
