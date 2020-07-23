class Bitlbee
  livecheck do
    url "https://get.bitlbee.org/src/"
    regex(/href=.*?bitlbee-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
