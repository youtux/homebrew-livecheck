class Druid
  livecheck do
    url "https://druid.apache.org/downloads.html"
    regex(/href=.*?druid-v?(\d+(?:\.\d+)+)-bin\.t/i)
  end
end
