class SonarqubeLts
  # The regex below should only match the LTS release archive on the Sonarqube
  # downloads page. This is necessary because the usual index page for releases
  # doesn't distinguish between current and LTS releases.
  livecheck do
    url "https://www.sonarqube.org/downloads/"
    regex(/downloads-lts.+?href=.+?sonarqube-v?(\d+(?:\.\d+)+)\.(?:z|t)/m)
  end
end
