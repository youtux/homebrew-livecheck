class WildflyAs
  livecheck do
    url "https://wildfly.org/downloads/"
    regex(/href=.*?wildfly[._-]v?(\d+(?:\.\d+)+)\.Final\.t/i)
  end
end
