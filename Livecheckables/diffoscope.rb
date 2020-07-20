class Diffoscope
  livecheck do
    url :stable
    regex(%r{/diffoscope-([0-9,.]+)\.t}i)
  end
end
