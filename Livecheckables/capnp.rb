class Capnp
  livecheck do
    url "https://capnproto.org/install.html"
    regex(/capnproto-c\+\+-(\d+(\.\d+)*)\.t/i)
  end
end
