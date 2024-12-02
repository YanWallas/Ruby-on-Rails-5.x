require 'rest-client'
require 'json'
require 'date'

class Translator
  API_URL = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
  
  def initialize(api_key)
    @api_key = api_key
  end

  def translate(text, from_lang, to_lang)
    response = RestClient.get(API_URL, params: {
      key: @api_key,
      text: text,
      lang: "#{from_lang}-#{to_lang}"
    })
    JSON.parse(response.body)['text'].first
  rescue RestClient::ExceptionWithResponse => e
    puts "Erro: #{e.response}"
    nil
  end
end

class TranslationLogger
  def self.log(original_text, translated_text, from_lang, to_lang)
    timestamp = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
    file_name = "translation_#{timestamp}.txt"
    File.open(file_name, 'w') do |file|
      file.puts "Original (#{from_lang}): #{original_text}"
      file.puts "Translated (#{to_lang}): #{translated_text}"
    end
    puts "Tradução salva em #{file_name}"
  end
end

class TranslatorApp
  def initialize(api_key)
    @translator = Translator.new(api_key)
  end

  def run
    puts "Digite o texto a ser traduzido:"
    text = gets.chomp
    puts "Digite o idioma original (ex: en, pt):"
    from_lang = gets.chomp
    puts "Digite o idioma de destino (ex: en, pt):"
    to_lang = gets.chomp

    translated_text = @translator.translate(text, from_lang, to_lang)
    
    if translated_text
      puts "Texto traduzido: #{translated_text}"
      TranslationLogger.log(text, translated_text, from_lang, to_lang)
    else
      puts "Não foi possível realizar a tradução."
    end
  end
end

# Execução
api_key = 'SUA_CHAVE_API_YANDEX'
app = TranslatorApp.new(api_key)
app.run
