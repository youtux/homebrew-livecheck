class Gradle
  livecheck do
    url "https://services.gradle.org/distributions/"
    regex(/href=.*?gradle-v?(\d+(?:\.\d+)+)-all\.(?:[tz])/i)
  end
end
