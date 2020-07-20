class Discount
  livecheck do
    url :homepage
    regex(/href=.*?discount-([0-9a-z.]+)\.t/i)
  end
end
