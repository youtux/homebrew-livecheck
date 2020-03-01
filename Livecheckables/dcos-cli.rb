class DcosCli
  livecheck :url   => "https://github.com/dcos/dcos-cli/releases",
            :regex => %r{releases/latest.*?href="/dcos/dcos-cli/tree/([0-9\.]+)"}m
end
