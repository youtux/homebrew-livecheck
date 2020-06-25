class KimApi
  livecheck do
    url "https://openkim.org/kim-api/previous-versions/"
    regex(/href=.*?kim-api-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
