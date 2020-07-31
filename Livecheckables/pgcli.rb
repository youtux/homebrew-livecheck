class Pgcli
  livecheck do
    url :stable
    regex(/href=.*?pgcli[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
