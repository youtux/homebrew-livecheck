class ArgpStandalone
  livecheck do
    url :homepage
    regex(/href=.*?argp-standalone-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
