require_relative "spec_helper"

describe Label do
  before :each do
    @label = Label.new("Lord Lordy", "Red")
    @item = Item.new("05-05-2005")
    @label.add_item(@item)
  end

  it "Initialize instance of the Label Class" do 
    expect(@label).to be_instance_of Label
  end

  it "Is it adding the title" do 
    expect(@label.title).to eql("Lord Lordy") 
  end

  it "Self attribute for label on add item method" do 
    label = @item.label
    expect(label).to eq @label
  end
end