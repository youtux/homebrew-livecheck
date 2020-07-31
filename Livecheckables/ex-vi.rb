class ExVi
  livecheck do
    url :stable
    regex(%r{url=.*?/ex[._-]v?(\d+)\.t}i)
  end
end
