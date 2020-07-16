class AwsElasticbeanstalk
  livecheck do
    url :stable
    regex(/href=.*?awsebcli-([0-9.]+)\.t/)
  end
end
