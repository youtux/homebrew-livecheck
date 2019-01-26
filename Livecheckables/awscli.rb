class Awscli
  livecheck :url => "https://github.com/aws/aws-cli/releases",
    :regex => /href=".*([\d.]+\.[\d.]+\.[\d.]+)\.t/
end
