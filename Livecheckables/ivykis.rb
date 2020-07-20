class Ivykis
  livecheck do
    url :homepage
    regex(%r{/ivykis-([0-9.]+)\.t}i)
  end
end
