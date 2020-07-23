class Csvkit
  livecheck do
    url :stable
    regex(/href=.*?csvkit-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
