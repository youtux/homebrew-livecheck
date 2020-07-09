class Jsonschema2pojo
  livecheck do
    url "https://github.com/joelittlejohn/jsonschema2pojo/releases/latest"
    regex(%r{href=.*?/tag/jsonschema2pojo[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
