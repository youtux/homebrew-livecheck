class Sonarqube
  livecheck :url => "https://sonarsource.bintray.com/Distribution/sonarqube/",
            :regex => /href="sonarqube-([0-9\.]+)\.z/
end
