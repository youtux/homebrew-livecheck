class Jsonschema2pojo
  livecheck do
    url "https://github.com/joelittlejohn/jsonschema2pojo/releases"
    regex(%r{releases/download/jsonschema2pojo-.*/jsonschema2pojo-([0-9,\.]+)\.tar})
  end
end
