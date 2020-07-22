class CharmTools
  livecheck do
    url :stable
    regex(/href=.*?charm-tools-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
