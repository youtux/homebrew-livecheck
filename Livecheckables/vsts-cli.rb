class VstsCli
  livecheck do
    url :stable
    regex(/href=.*?vsts-cli-([0-9a-z.]+)\.t/)
  end
end
