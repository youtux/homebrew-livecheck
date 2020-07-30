class Csvkit
  livecheck do
    url :stable
    regex(/href=.*?csvkit[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
