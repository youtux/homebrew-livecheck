class CharmTools
  livecheck do
    url "https://pypi.org/simple/charm-tools/"
    regex(%r{href=".*?/charm-tools-([0-9.]+)\.t})
  end
end
