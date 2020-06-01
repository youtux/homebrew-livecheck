class Wabt
  livecheck do
    url "https://github.com/WebAssembly/wabt/releases/latest"
    regex(%r{href=.+/tag/v?(\d+(?:\.\d+)+)})
  end
end
