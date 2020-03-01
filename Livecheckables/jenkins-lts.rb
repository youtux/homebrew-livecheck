class JenkinsLts
  livecheck :url   => "http://mirrors.jenkins-ci.org/war-stable/",
            :regex => %r{href="(\d+.\d+.\d+)/"}
end
