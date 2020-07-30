class Sonarqube
  livecheck do
    url "https://binaries.sonarsource.com/Distribution/sonarqube/"
    regex(/sonarqube[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
