class AwsElasticbeanstalk
  livecheck do
    url :stable
    regex(/href=.*?awsebcli[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
