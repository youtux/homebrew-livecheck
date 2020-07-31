class CharmTools
  livecheck do
    url :stable
    regex(/href=.*?charm-tools[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
