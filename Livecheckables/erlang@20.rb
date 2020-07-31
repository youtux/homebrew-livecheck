class ErlangAT20
  livecheck do
    url "https://github.com/erlang/otp.git"
    regex(/OTP[._-]v?(20(?:\.\d+)+)/i)
  end
end
