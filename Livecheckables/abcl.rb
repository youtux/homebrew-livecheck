class Abcl
  livecheck do
    url "https://common-lisp.net/project/armedbear/releases/"
    regex(%r{<a href="([0-9,\.]+)/">})
  end
end
