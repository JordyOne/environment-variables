# puts ENV["WOULD_RISK_HIS_NECK_FOR_HIS_BROTHER_MAN"]
# puts ENV["RACK_ENV"]
# puts ENV.inspect
# puts ENV["TERM_PROGRAM"]

  def migrate_method(env)
    puts "Mirgrate the #{env["RACK_ENV"]} database."
  end

  def hungry(env)
    if env["HUNGRY"] == true
      puts "FEED ME"
    else
      puts "not now"
    end
  end

migrate_method(ENV)

hungry(ENV)

  puts "Favorite color in parent starts as: #{ENV['FAVORITE_COLOR']}"

  fork do
    puts "Favorite color in child starts as: #{ENV['FAVORITE_COLOR']}"
    ENV["FAVORITE_COLOR"] = 'red'
    puts "Favorite color in child ends as: #{ENV['FAVORITE_COLOR']}"
  end

  puts "Favorite color in parent ends as: #{ENV['FAVORITE_COLOR']}"
