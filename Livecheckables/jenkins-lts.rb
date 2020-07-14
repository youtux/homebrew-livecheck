class JenkinsLts
  livecheck do
    url "http://mirrors.jenkins-ci.org/war-stable/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
