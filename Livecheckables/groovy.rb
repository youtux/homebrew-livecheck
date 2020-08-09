class Groovy
  livecheck do
    url "https://dl.bintray.com/groovy/maven/"
    regex(/href=.*?groovy-binary[._-]v?([\d.]+)\.zip/i)
  end
end
