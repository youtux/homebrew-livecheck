class AwsElasticbeanstalk
  livecheck :url   => "https://pypi.python.org/simple/awsebcli/",
            :regex => %r{href=".*?/awsebcli-([0-9\.]+)\.t}
end
