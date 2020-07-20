class Groovysdk
  livecheck do
    url "https://dl.bintray.com/groovy/maven/"
    regex(/apache-groovy-sdk-([\d.]+)\.zip/i)
  end
end
