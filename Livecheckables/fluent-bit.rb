class FluentBit
  livecheck :url => "https://github.com/fluent/fluent-bit/releases",
            :regex => %r{href=".*?/v?([0-9]+\.[0-9\.]+)"}
end
