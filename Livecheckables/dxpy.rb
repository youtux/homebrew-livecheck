class Dxpy
  livecheck do
    url :stable
    regex(/href=.*?dxpy-([0-9.]+)\.t/i)
  end
end
