class Openssl
  livecheck :url => "https://github.com/openssl/openssl/releases",
            :regex => %r{<span class="tag-name">OpenSSL_([^<-]+)</span>}
end
