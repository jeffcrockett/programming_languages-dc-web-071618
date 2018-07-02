require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |name, info|
      new_hash[name] = {}
      new_hash[name][:style] = []
    end
  end
  
  languages.each do |style, language_hash|
    new_hash.each do |name,|
      if language_hash.keys.include?(name)
        new_hash[name][:style] << style
      end
    end
  end
  binding.pry

end
