class Ccm
  livecheck do
    url :stable
    regex(%r{/ccm-([0-9,.]+)\.t}i)
  end
end
