class Abnfgen
  livecheck do
    url :homepage
    regex(%r{href=.*?/abnfgen-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
