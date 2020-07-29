class Discount
  livecheck do
    url :homepage
    regex(/href=.*?discount-v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
