class Remctl
  livecheck do
    url :homepage
    regex(%r{href=".*?/remctl-([0-9.]+)\.t})
  end
end
