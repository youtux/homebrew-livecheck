class Aspectj
  livecheck do
    url "https://eclipse.org/aspectj/downloads.php"
    regex(%r{Latest Stable Release.*?/aspectj-v?(\d+(?:\.\d+)+)\.jar}im)
  end
end
