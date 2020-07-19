class Keepassc
  livecheck do
    url :stable
    regex(/href=.*?keepassc-([0-9.]+)\.t/i)
  end
end
