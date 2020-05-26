class JenkinsLts
  livecheck do
    url "http://mirrors.jenkins-ci.org/war-stable/"
    regex(%r{href="(\d+.\d+.\d+)/"})
  end
end
