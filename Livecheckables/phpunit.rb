class Phpunit
  livecheck do
    url "https://phar.phpunit.de/"
    regex(%r{href=".*?/phpunit-([0-9\.]+)\.phar})
  end
end
