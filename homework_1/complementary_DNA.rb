def complementary_DNA(dna)
  dna.tr('ATCG', 'TAGC')
end
puts complementary_DNA("ATTA")
puts complementary_DNA("CGGC")
puts complementary_DNA("ACGTTAGTTA")
