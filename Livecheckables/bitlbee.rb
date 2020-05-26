class Bitlbee
  livecheck do
    url "https://get.bitlbee.org/src/"
    regex(/href="bitlbee-([0-9\.]+)\.t/)
  end
end
