Feature: Internationalization
  As survey taker
  I want to see surveys in my own language
  So that I understand what they're asking

  Scenario:
  Given I parse
    """
    survey "One lanugage is never enough" do
      translations :ar => "translations/languages.ar.yml" , :es => "translations/languages.es.yml"
      section_one "One" do
        label_hello "Hello"

        q_name "What is your name?"
        a_name :string, :help_text => "My name is..."
      end
    end
    """
  Then there should be 4 translations with
    | locale |
    | ar     |
    | es     |
    | he     |
    | ko     |
  When I start the survey in "es"
  Then I should see "Un idioma nunca es suficiente"
    And I should see "Uno"
    And I should see "¡Hola!"
    And I should see "¿Cómo se llama Usted?"
    And I should see "Mi nombre es..."
  When I start the survey in "he"
  Then I should see "ידיעת שפה אחת אינה מספיקה"
    And I should see "אחת"
    And I should see "שלום"
    And I should see "מה שמך?"
    And I should see "שמי..."
