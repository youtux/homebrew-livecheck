class FetchCrl
  livecheck do
    url "https://dist.eugridpma.info/distribution/util/fetch-crl/"
    regex(/href=.*?fetch-crl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
