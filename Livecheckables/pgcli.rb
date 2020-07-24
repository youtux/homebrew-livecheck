class Pgcli
  livecheck do
    url :stable
    regex(/href=.*?pgcli-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
