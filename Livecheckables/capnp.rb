class Capnp
  livecheck do
    url "https://capnproto.org/install.html"
    regex(/capnproto-c\+\+[._-]v?(\d+(\.\d+)*)\.t/i)
  end
end
