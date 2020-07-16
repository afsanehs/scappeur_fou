require_relative '../lib/deputees.rb'
require_relative "./spec_helper"

describe "get_deputee_data" do
     it "gets Bruno Bilde infos" do 
        expect(get_deputee_data("/deputes/fiche/OMC_PA720822")).to eq(
            {"first_name" => "Bruno",
             "last_name" => "Bilde",
             "email" => "bruno.bilde@assemblee-nationale.fr"}
        )
    end
end

describe "get_deputee_data" do
    let(:links){get_links}

    it "gets the right number" do 
       expect(links.size).to eq(573)
    end
end
