class Abnfgen
  livecheck do
    url :homepage
    regex(%r{href=.*?/abnfgen[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
