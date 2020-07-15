class AwsElasticbeanstalk
  livecheck do
    url "https://pypi.org/simple/awsebcli/"
    regex(/href=.*?awsebcli-([0-9.]+)\.t/)
  end
end
