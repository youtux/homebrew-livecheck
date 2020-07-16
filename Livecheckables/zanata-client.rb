class ZanataClient
  livecheck do
    url "https://search.maven.org/remotecontent?filepath=org/zanata/zanata-cli/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
