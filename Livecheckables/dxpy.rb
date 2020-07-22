class Dxpy
  livecheck do
    url :stable
    regex(/href=.*?dxpy-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
