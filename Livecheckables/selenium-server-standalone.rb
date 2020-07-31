class SeleniumServerStandalone
  livecheck do
    url "https://www.selenium.dev/downloads/"
    regex(/href=.*?selenium-server-standalone[._-]v?(\d+(?:\.\d+)+)\.jar/i)
  end
end
