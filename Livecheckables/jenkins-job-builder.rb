class JenkinsJobBuilder
  livecheck do
    url :stable
    regex(/href=.*?jenkins-job-builder-([0-9.]+)\.t/i)
  end
end
