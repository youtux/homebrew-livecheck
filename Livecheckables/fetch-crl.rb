class FetchCrl
  livecheck :url   => "https://dist.eugridpma.info/distribution/util/fetch-crl/",
            :regex => /href="fetch-crl-([0-9,\.]+)\.tar/
end
