class Composer
  livecheck do
    url "https://github.com/composer/composer.git"
    regex(/^[\d.]+$/i)
  end
end
