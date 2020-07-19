class Php
  livecheck do
    url "https://www.php.net/releases/feed.php"
    regex(/PHP (\d+(?:\.\d+)+) /i)
  end
end
