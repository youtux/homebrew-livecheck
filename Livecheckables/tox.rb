class Tox
  livecheck do
    url :stable
    regex(%r{/tox-([0-9,.]+)\.t}i)
  end
end
