class Mkvalidator
  livecheck do
    url :stable
    regex(%r{url=.*?/mkvalidator-v?(\d+(?:\.\d+)+)\.t})
  end
end
