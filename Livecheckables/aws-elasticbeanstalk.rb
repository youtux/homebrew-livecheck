class AwsElasticbeanstalk
  livecheck :url   => "https://pypi.org/simple/awsebcli/",
            :regex => %r{href=".*?/awsebcli-([0-9\.]+)\.t}
end
