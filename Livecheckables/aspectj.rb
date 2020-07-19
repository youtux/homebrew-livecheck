class Aspectj
  livecheck do
    url "https://eclipse.org/aspectj/downloads.php"
    regex(%r{Latest Stable Release.*?/aspectj-([0-9,.]+)\.jar}im)
  end
end
