# encoding: UTF-8
survey "One lanugage is never enough" do
  translations :ar => "translations/languages.ar.yml" , :es => "translations/languages.es.yml", :he => "translations/languages.he.yml", :ko => "translations/languages.ko.yml"
  section_one "One" do
    label_hello "Hello"

    q_name "What is your name?"
    a_name :string, :help_text => "My name is..."
  end
end