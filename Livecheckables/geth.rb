class Geth
  livecheck :url => "https://github.com/ethereum/go-ethereum/releases",
            :regex => %r{href="/ethereum/go-ethereum/tree/v?([0-9\.]+)}
end
