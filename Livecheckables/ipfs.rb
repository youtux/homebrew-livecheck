class Ipfs
  livecheck :url => "https://github.com/ipfs/go-ipfs/releases",
            :regex => %r{href="/ipfs/go-ipfs/releases/tag/v?([0-9\.]+)}
end
