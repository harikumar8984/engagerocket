def set?(*cards)
  attributes = {shape: cards.map(&:shape).uniq.count,colour: cards.map(&:colour).uniq.count,fill: cards.map(&:fill).uniq.count, count: cards.map(&:count).uniq.count}
  attributes.select{|key, value| value == cards.length || value == 1}.count == attributes.count
end