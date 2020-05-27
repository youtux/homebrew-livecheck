class Le
  livecheck do
    url "https://github.com/lavv17/le/releases"
    regex(%r{href="/lavv17/le/tree/v?([0-9\.]+)"})
  end
end
