class Diffoscope
  livecheck do
    url "https://pypi.org/simple/diffoscope"
    regex(%r{/diffoscope-([0-9,\.]+)\.t})
  end
end
