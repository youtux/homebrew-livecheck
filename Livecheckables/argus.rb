class Argus
  livecheck do
    url "https://qosient.com/argus/src/"
    regex(/href=.*?argus-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
