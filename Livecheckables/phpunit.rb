class Phpunit
  livecheck :url => "https://phar.phpunit.de/",
            :regex => %r{href=".*?/phpunit-([0-9\.]+)\.phar}
end
