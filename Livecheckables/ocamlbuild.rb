class Ocamlbuild
  livecheck do
    url "https://github.com/ocaml/ocamlbuild/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
