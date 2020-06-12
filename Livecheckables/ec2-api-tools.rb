class Ec2ApiTools
  livecheck do
    url "http://s3.amazonaws.com/ec2-downloads/"
    regex(/<Key>ec2-api-tools-v?(\d+(?:\.\d+)+(?:-\d+)?)\.zip</i)
  end
end
