class Erlang
  livecheck do
    url :head
    regex(/OTP-([0-9.]+)$/)
  end
end
