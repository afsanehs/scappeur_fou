require_relative '../lib/mairie_christmas.rb'
require_relative "./spec_helper"

describe "mairie christmas" do
   let(:data){get_townhall_urls} 
   describe "get_townhall_urls" do
      it "fetches 193 results" do 
         expect(data.size).to eq(193)
      end
   end

   describe "get_name_and_email" do
      let(:btc){get_name_and_email(data[10])}
      let(:eth){get_name_and_email(data[20])}
      it "provides proper data for BTC" do
         expect(btc.keys.size).to eq(1)
         expect(btc["ARGENTEUIL"]).to eq("christian.bournery@ville-argenteuil.fr")
      end
      it "provides proper data for ETH" do
         expect(eth.keys.size).to eq(1)
         expect(eth["BEAUCHAMP"]).to eq("accueil-mairie@ville-beauchamp.fr")
      end
   end
end