class Ethereum
  livecheck do
    url "https://github.com/ethereum/go-ethereum/releases"
    regex(%r{Latest.*?href="/ethereum/go-ethereum/tree/v?([0-9\.]+)}m)
  end
end
