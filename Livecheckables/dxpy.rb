class Dxpy
  livecheck do
    url "https://pypi.org/simple/dxpy/"
    regex(/href=.*?dxpy-([0-9.]+)\.t/)
  end
end
