class Emacs
  livecheck do
    url :head
    regex(/emacs-(\d+\.\d+)$/)
  end
end
