class Kvazaar
  livecheck :url => "https://github.com/ultravideo/kvazaar/releases",
            :regex => %r{href="/ultravideo/kvazaar/tree/v?([0-9\.]+)}
end
