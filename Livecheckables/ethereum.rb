class Ethereum
  livecheck do
    url "https://github.com/ethereum/go-ethereum/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
