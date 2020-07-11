class Kotlin
  livecheck do
    url "https://github.com/JetBrains/kotlin/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
