class Phpunit
  livecheck do
    url "https://phar.phpunit.de/"
    regex(/href=.*?phpunit-([0-9.]+)\.phar/)
  end
end
