module MoviesHelper
  def genres
    [
      ['Family', 'Family'],
      ['Comedy', 'Comedy'],
      ['Drama', 'Drama'],
      ['Action/Adventure', 'Action/Adventure'],
      ['SciFi/Fantasy', 'Scifi/Fantasy'],
      ['Horror']
    ]
  end

  def ratings
    [
      ['G', 'G'],
      ['PG', 'PG'],
      ['PG-13', 'PG-13'],
      ['R', 'R']
    ]
  end

  def stars
    [['1', 1], ['2', 2], ['3', 3], ['4', 4]]
  end
end
