class JsonC
  livecheck do
    url :head
    regex(/^json-c[._-](\d+(?:\.\d+)+)[._-]\d{6,8}$/i)
  end
end
