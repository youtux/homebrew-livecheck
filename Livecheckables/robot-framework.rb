class RobotFramework
  livecheck do
    url "https://github.com/robotframework/robotframework.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
