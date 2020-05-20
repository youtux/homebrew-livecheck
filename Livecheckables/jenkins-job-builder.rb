class JenkinsJobBuilder
  livecheck :url   => "https://pypi.org/simple/jenkins-job-builder/",
            :regex => %r{href=".*?/jenkins-job-builder-([0-9\.]+)\.t}
end
