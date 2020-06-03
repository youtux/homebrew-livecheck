class SpringRoo
  livecheck do
    url "https://projects.spring.io/spring-roo"
    regex(%r{href=".*?/spring-roo-([0-9.]+)\.RELEASE\.z})
  end
end
