class Coinutils
  livecheck do
    url "https://github.com/coin-or/CoinUtils.git"
    regex(%r{^(?:releases/)?(\d+(?:\.\d+)+)$}i)
  end
end
