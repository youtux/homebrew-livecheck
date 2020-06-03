class Argus
  livecheck do
    url "https://qosient.com/argus/src/"
    regex(/href="argus-([0-9,.]+)\.tar/)
  end
end
