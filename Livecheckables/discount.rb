class Discount
  livecheck do
    url "https://www.pell.portland.or.us/~orc/Code/discount/"
    regex(/href="discount-([0-9a-z\.]+)\.t/)
  end
end
