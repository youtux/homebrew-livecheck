class Ivykis
  livecheck do
    url :homepage
    regex(%r{/ivykis-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
