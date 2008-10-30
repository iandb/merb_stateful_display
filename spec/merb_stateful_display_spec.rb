require File.dirname(__FILE__) + '/spec_helper'

describe "merb_stateful_display" do
  before(:each) do 
    @obj = mock('object')
    @obj.stub!(:state).and_return('ready_for_payment')
    action = 'edit'
  end
  it "should call display with edit_ready_for_payment as template" do
    sdisplay(@obj)
  end
end