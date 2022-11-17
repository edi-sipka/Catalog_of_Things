require_relative "spec_helper"

describe Book do
  before :each do
    @book = Book.new("Edi", "Good", "21-02-2022")
  end

  it "Initialize instance of the Book Class" do 
    expect(@book).to be_instance_of Book
  end

  it "Is it adding the publisher" do 
    expect(@book.publisher).to eql("Edi") 
  end

  it "Is it adding the date" do 
    expect(@book.publish_date).to eql("21-02-2022") 
  end
end