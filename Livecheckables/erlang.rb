class Erlang
  livecheck do
    url :head
    regex(/OTP-v?(\d+(?:\.\d+)+)$/i)
  end
end
