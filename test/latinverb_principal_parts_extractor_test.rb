class LatinVerbPrincipalPartsExtractorTest < Minitest::Test
  def setup
    @ex = Linguistics::Latin::Verb::LatinVerb::PrincipalPartsExtractor.new  "one two three four"
  end

  def test_parts_number_four
    assert_equal @ex.principal_parts.length, 4, "should have 4 parts"
  end

  def test_active_indicative_present_sg_first
    assert_equal @ex.first_person_singular, "one"
  end

  def test_present_act_inf
    assert_equal @ex.present_active_infinitive, "two"
  end

  def test_active_indicative_perfect_sg_first
    assert_equal @ex.first_person_perfect, "three"
  end

  def test_supine
    assert_equal @ex.passive_perfect_participle, "four"
  end
end
