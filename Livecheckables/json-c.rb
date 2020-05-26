class JsonC
  livecheck do
    url "https://github.com/json-c/json-c/releases"
    regex(%r{href="/json-c/json-c/releases/tag/json-c-([0-9\.]+)\-[0-9]+"})
  end
end
