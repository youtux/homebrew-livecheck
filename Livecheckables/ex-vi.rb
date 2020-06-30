class ExVi
  livecheck do
    url :stable
    regex(%r{url=.+?/ex-v?(\d+)\.t}i)
  end
end
