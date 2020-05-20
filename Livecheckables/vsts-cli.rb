class VstsCli
  livecheck :url   => "https://pypi.org/simple/vsts-cli/",
            :regex => %r{href=".*?/vsts-cli-([0-9a-z\.]+)\.t}
end
