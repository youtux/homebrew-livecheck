class Vault
  livecheck do
    url "https://releases.hashicorp.com/vault/"
    regex(%r{href="/vault/(\d+(?:\.\d+)+)/})
  end
end
