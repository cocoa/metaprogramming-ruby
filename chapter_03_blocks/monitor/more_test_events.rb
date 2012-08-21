# this is defined at the TOP LEVEL scope

def monthly_sales
  200
end

target_sales = 100

event "monthly sales are suspiciously high" do
  monthly_sales > target_sales
end

event "monthly sales are suspiciously high" do
  monthly_sales < target_sales
end