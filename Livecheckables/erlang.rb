class Erlang
  livecheck do
    url "https://github.com/erlang/otp.git"
    regex(/OTP-([0-9\.]+)$/)
  end
end
