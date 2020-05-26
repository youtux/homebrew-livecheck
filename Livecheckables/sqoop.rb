class Sqoop
  livecheck do
    url "https://sqoop.apache.org/"
    regex(/Latest stable release is (\d+(?:\.\d+)+)/)
  end
end
