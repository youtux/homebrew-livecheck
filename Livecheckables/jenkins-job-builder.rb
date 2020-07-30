class JenkinsJobBuilder
  livecheck do
    url :stable
    regex(/href=.*?jenkins-job-builder[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
