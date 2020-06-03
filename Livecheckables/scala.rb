class Scala
  livecheck do
    url "https://www.scala-lang.org/files/archive"
    regex(/href=.*?scala-v?(\d+(?:\.\d+)+)(?:.final)?\.t/i)
  end
end
