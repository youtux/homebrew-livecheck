class Dxpy
  livecheck do
    url :stable
    regex(/href=.*?dxpy[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
