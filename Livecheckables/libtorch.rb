class Libtorch
  livecheck :url   => "https://github.com/pytorch/pytorch/releases/latest",
            :regex => %r{href=.+/tag/v?(\d+(?:\.\d+)+)}
end
