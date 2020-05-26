class Gwenhywfar
  livecheck do
    url "https://www.aquamaniac.de/rdm/projects/gwenhywfar/files"
    regex(%r{href="[^"]+/gwenhywfar-(\d+(?:\.\d+)+)\.t})
  end
end
