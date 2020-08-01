class Groovysdk
  livecheck do
    url "https://dl.bintray.com/groovy/maven/"
    regex(/apache-groovy-sdk[._-]v?([\d.]+)\.zip/i)
  end
end
