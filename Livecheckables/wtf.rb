class Wtf
  livecheck do
    url :homepage
    regex(%r{.*?/wtf-([0-9.]+)\.t}i)
  end
end
