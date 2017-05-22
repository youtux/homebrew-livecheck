class JenkinsLts
  livecheck :url => "http://mirrors.jenkins-ci.org/war-stable/",
            :regex => /href="(\d+.\d+.\d+)\/"/
end
