class Vault
  livecheck :url => "https://releases.hashicorp.com/vault/",
            :regex => %r{href="/vault/(\d+(?:\.\d+)+)/}
end
