module Complement
  @rna = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(letter)
    letter.chars.reduce(''){|rna, char| rna + @rna[char]}
  end
end