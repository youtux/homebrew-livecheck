class Ocaml
  livecheck do
    url "https://ocaml.org/releases"
    regex(/<a href='([\d.]+\.[\d.]+\.?[\d.]?)\.html'>/)
  end
end
