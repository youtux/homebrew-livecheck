class Suricata
  livecheck do
    url "https://suricata-ids.org/download/"
    regex(/suricata-([0-9.]+)\.t/i)
  end
end
