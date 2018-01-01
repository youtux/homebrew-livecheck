class Artifactory
  livecheck :url => "https://dl.bintray.com/jfrog/artifactory/",
            :regex => /href="jfrog-artifactory-oss-([0-9\.]+)\.[^0-9]/
end
