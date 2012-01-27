class Bandname
  
  def self.generate (count = 1)
    names_hash = {}
    names = []
    count.times do
      case rand(8)
      when 0
        names_hash[ Bandname.prefix_with_blank + Bandname.adjective.singularize + " " + Bandname.noun.pluralize] = 'foo' 
      when 1
        names_hash[ (rand(2) == 0 ? 'The ' : '') + Bandname.adjective] = 'blargh'
      when 2
        names_hash[ Bandname.prefix_without_blank + Bandname.noun.pluralize] = 'baz'
      when 3
        names_hash[ Bandname.noun.singularize + ' and the ' + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.pluralize ] = 'frotz'
      when 4
        names_hash[ Bandname.proper_noun + ' and the ' + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.pluralize ] = 'frotz'
      when 5
        names_hash[ Bandname.proper_noun + ' the ' + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.singularize ] = 'frotz'
      when 6
        names_hash[ Bandname.prefix_with_blank + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.singularize + ' of ' + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.pluralize] = 'quux'
      when 7
        names_hash[ Bandname.noun.pluralize + ' and their ' + (rand(2) == 0 ? "#{adjective} " : '') + Bandname.noun.pluralize ] = 'frotz'
      end
    end
    names_hash.each { |k, v| names << k }
    names
  end 

  private

  def self.proper_noun
    nouns = [ 
      'Mike', "Alex", "Lefty", "Atilla", "Hammurabi", "Zeus", "Frodo", 'Manny', 'Sully', "jay", 'ralph', 'Luke', "matt", "john", "marvin",
      "bugs", "elmer", 'chip', 'manfred', "Dr. Teeth", 'boris', 'natasha', 'sven', 'kermit', 'frank', 'kevin', 'peter', 'hans', 'mark', 'scott',
      'esmerelda', 'hetty', 'paul', 'xavier'
    ]
    capitalize_words(nouns[rand(nouns.count)])    
  end

  def self.noun
    nouns = [
      'contenders', 'euphemisms', 'atrocities', 'nouns', 'moppets', 'clods', 'room', 'elephant', 'mammoth', 'gorilla',
      'proverbials', 'links', 'disbelief', 'wits', 'souls', 'grannies', 'babies', 'linings', 'magic', 'technology', 'trip', 
      'sauce', 'lunches', 'truth', 'birds', 'hands', 'fool', 'links', 'steps', 'overflow', 'proof of concept', 'insensitivity', 

      'Sheep', 'Vikings', 'Mongeese', 'spiders', 'bears', 'ninjas', 'pirates', 'zombies', 'gadget', 'manifesto', 'audacity', 
      'cromulence', 'seers', 'buckaroos', 'lava', 'magma', 'atmosphere', 'ocean', 'lake', 'river', 'smell', 'morphology', 'snails', 
      'monied classes', 'rhetoric', 'tigers', 'manatees', 'spheriods', 'rule of law', 'biscuits', 'spaceship', 'rocketship', 'hero',
      'monarch', 'glare', 'bungalow', 'mansion', 'wounds', 'goats', 'geese', 'marbles', 'snakes', 'jet planes', 'dinosaurs',
      'science', 'snowbank', 'monopoly', 'Muskoka', 'balaclava', 'mittens', 'fire', 'earth', 'water', 'justice', 'moose', 'squirrel',
      'saltine', 'topping', 'wax', 'lightning', 'pants', 'trousers', 'procedure', 'buffer', 'freedom', 'closure', 'asbestos', 'robot',
      'monarchy', 'mayhem', 'kerfuffle', 'shenanigan', 'eagle', 'worm', 'emporium', 'internet'
    ]
    capitalize_words(nouns[rand(nouns.count)])
  end

  def self.adjective
    adjectives = [
      'proverbial', 'whisky soaked', 'insensitive', '98lb', 'egg sucking', 'awesome', 'missing', 'silver', 'hirsute', 'half late', 
      'mustachioed', 'funny', 'geeky', 'quirky', 
 
      'lumpy', 'big fat hairy', 'globular', 'ornate', 'tasty', 'Dolorous', 'Sexy', 'Sticky', 'redolent', 'benevolent', 'alternate',
      '812lb', 'prodigal', 'late nite', 'awakened', 'less than perfect', 'cromulent', 'fragrant', 'lemon scented', 'jobless', '99%',
      'benighted', 'enobled', 'latent', 'terrifying', 'redundant', 'absence of', 'amniotic', 'sophomoric', 'curmudgeonly', 'geofluvial',
      'oblate', 'crafty', 'morbid', 'galactic', 'intergalactic', 'interplanetary', 'down home', 'delicious', 'magisterial', 'kingly',
      'baleful', 'flat', 'pointed', 'obtuse', 'smoke filled', 'well seasoned', 'lightly salted', 'ideal', 'lurching', 'crouching', 'feral',
      'hidden', 'obscured', 'obscure', 'suspension of', 'scientific', 'atonal', 'melodic', 'servile', 'dimly lit', 'crepuscular', 'mortal', 
      'immortal', 'jet set', 'painted', 'lovable', 'scorched', 'titular', 'discontented', 'disgruntled', 'greased', 'free', 'discordant',
      'almost perfect', 'electric', 'space age', 'big', "small", 'madcap', 'zany', 'welcome', 'unwelcome', 'plutonium', 'far from perfect',
      'atomic', 'saucy', 'microscopic', 'horrendous', 'half eaten'
    ]
    capitalize_words(adjectives[rand(adjectives.count)])
  end

  def self.prefix_with_blank
    case rand(10)
    when 0..3
      return "The "
    when 4..7
      return ""
    when 8
      return 'My '
    when 9
      return 'Their '
    end
  end

  def self.prefix_without_blank
    case rand(10)
    when 0..6
      return "The "
    when 7,8
      return 'My '
    when 9
      return 'Their '
    end
  end

  def self.capitalize_words(words)
    words.split(' ').each { |word| word.capitalize! }.join(' ')
  end

end
