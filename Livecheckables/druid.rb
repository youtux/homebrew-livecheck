class Druid
  livecheck do
    url "https://druid.apache.org/downloads.html"
    regex(/href=".*druid-([0-9,\.]+)-bin\.t/)
  end
end
