require "rails_helper"

RSpec.describe Character do
  it "exists" do
    data = {
      allies: ["Ozai", "Zuko"],
      enemies: ["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa"],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      name: "Azula",
      affiliation: "Fire Nation Royal Family"
    }

    character = Character.new(data)

    expect(character).to be_a Character
    expect(character.allies).to eq(["Ozai", "Zuko"])
    expect(character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa"])
    expect(character.photoUrl).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
    expect(character.name).to eq("Azula")
    expect(character.affiliation).to eq("Fire Nation Royal Family")
  end
end