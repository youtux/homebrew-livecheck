class Kotlin
  livecheck do
    url "https://api.github.com/repos/JetBrains/kotlin/releases/latest"
    regex(/([0-9\.]+\.[0-9\.]+)"/)
  end
end
