class Sonarqube
  livecheck do
    url "https://binaries.sonarsource.com/Distribution/sonarqube/"
    regex(/sonarqube-([0-9.]+)\.z/)
  end
end
