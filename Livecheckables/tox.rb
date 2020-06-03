class Tox
  livecheck do
    url "https://pypi.org/simple/tox"
    regex(%r{/tox-([0-9,.]+)\.t})
  end
end
