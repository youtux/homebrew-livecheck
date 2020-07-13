class Ocaml
  livecheck do
    url "https://ocaml.org/releases"
    regex(/href=.*?v?(\d+(?:\.\d+)+)\.html/i)
  end
end
