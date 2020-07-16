class Pgcli
  livecheck do
    url :stable
    regex(/href=.*?pgcli-([0-9,.]+)\.t/)
  end
end
