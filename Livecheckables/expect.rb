class Expect
  livecheck do
    url :stable
    regex(%r{url=.*?/expect-?v?(\d+(?:\.\d+)+)\.t}i)
  end
end
