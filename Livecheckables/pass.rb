class Pass
  livecheck do
    url "https://git.zx2c4.com/password-store.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
