class Groovy
  livecheck do
    url "https://dl.bintray.com/groovy/maven/"
    regex(/groovy-binary-([\d\.]+)\.z/)
  end
end
