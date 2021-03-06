require 'spec_helper'

describe "payments/new" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :paid_by_user_id => 1,
      :collected_by_user_id => 1,
      :amount_paid => "9.99",
      :notes => "MyString",
      :reconciled => false
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path, :method => "post" do
      assert_select "input#payment_paid_by_user_id", :name => "payment[paid_by_user_id]"
      assert_select "input#payment_collected_by_user_id", :name => "payment[collected_by_user_id]"
      assert_select "input#payment_amount_paid", :name => "payment[amount_paid]"
      assert_select "input#payment_notes", :name => "payment[notes]"
      assert_select "input#payment_reconciled", :name => "payment[reconciled]"
    end
  end
end
