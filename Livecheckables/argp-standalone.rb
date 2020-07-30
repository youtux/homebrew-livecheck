class ArgpStandalone
  livecheck do
    url :homepage
    regex(/href=.*?argp-standalone[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
