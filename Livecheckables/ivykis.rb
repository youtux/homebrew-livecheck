class Ivykis
  livecheck do
    url :homepage
    regex(%r{/ivykis[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
