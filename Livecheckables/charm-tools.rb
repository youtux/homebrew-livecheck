class CharmTools
  livecheck do
    url :stable
    regex(/href=.*?charm-tools-([0-9.]+)\.t/i)
  end
end
