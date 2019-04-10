class App
  def tenminuteswalk(route)
    heading = {w: 0, e: 0,n: 0, s: 0}
    route.each { |block| heading[block.to_sym] += 1 }
    heading[:w] == heading[:e] && heading[:n] == heading[:s] && route.count == 10
  end
end
