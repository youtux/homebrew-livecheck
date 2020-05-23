class Wapm
  livecheck :url   => "https://github.com/wasmerio/wapm-cli/releases/latest",
            :regex => %r{href=.+?/tag/v?(\d+(?:\.\d+)+)["']}i
end
