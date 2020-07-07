class SpringRoo
  livecheck do
    url :homepage
    regex(%r{href=".*?/spring-roo-([0-9.]+)\.RELEASE\.zip})
  end
end
