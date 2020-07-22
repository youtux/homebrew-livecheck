class AwsElasticbeanstalk
  livecheck do
    url :stable
    regex(/href=.*?awsebcli-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
