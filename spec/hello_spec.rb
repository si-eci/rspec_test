describe "テスト" do
  
  before { @hello = "Hello, world!" }
  
  it "変数helloの内容はHello, world!" do
    expect(@hello).to eq "Hello, world!"
  end
end

