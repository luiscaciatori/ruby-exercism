module Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(letter)
    letter.chars.reduce(''){|rna, char| rna + DNA_TO_RNA[char]}
  end
end