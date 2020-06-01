class AwscliAT1
  livecheck do
    url "https://github.com/aws/aws-cli.git"
    regex(/v?(1(?:\.\d+)+)$/)
  end
end
