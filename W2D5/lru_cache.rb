class LRUCache

  def initialize
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    case @cache.length
    when < 4
      @cache.unshift(el)
    when >=4
      @cache.pop
      @cache.unshift(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @cache
  end

  private
  # helper methods go here!

end

