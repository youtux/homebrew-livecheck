class Artifactory
  livecheck do
    url "https://dl.bintray.com/jfrog/artifactory/"
    regex(/href=.*?jfrog-artifactory-oss[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
