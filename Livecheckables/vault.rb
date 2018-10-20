class Vault
  livecheck :url => "https://www.vaultproject.io/downloads.html",
            :regex => %r{href="https://releases.hashicorp.com/vault/([0-9\.]+)}
end
