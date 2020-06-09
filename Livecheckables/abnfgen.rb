class Abnfgen
  livecheck do
    url :homepage
    regex(%r{href=.*?/abnfgen-([0-9.]+)\.t})
  end
end
