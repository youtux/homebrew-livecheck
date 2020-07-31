class Suricata
  livecheck do
    url "https://suricata-ids.org/download/"
    regex(/suricata[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
