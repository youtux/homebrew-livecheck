class Phpunit
  livecheck do
    url "https://phar.phpunit.de/"
    regex(/href=.*?phpunit[._-]v?(\d+(?:\.\d+)+)\.phar/i)
  end
end
