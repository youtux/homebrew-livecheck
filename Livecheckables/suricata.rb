class Suricata
  livecheck do
    url "https://suricata-ids.org/download/"
    regex(/suricata-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
