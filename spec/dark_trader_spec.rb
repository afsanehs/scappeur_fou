require_relative '../lib/dark_trader.rb'
require_relative "./spec_helper"

describe "dark trader" do
   let(:data){get_data} 
   describe "get_data" do
      it "fetches 200 results" do 
         expect(data.size).to eq(200)
      end
   end

   describe "currency_and_price" do
      let(:btc){currency_and_price(data[0])}
      let(:eth){currency_and_price(data[1])}
      it "provides proper data for BTC" do
         expect(btc.keys.size).to eq(1)
         expect(btc["BTC"]).to be_a(Numeric)
      end
      it "provides proper data for ETH" do
         expect(eth.keys.size).to eq(1)
         expect(eth["ETH"]).to be_a(Numeric)
      end
   end
end