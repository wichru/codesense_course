  def rps (arg1, arg2)
    opt = {
      'rockpaper' => "Gracz 2 wygrywa",
      'paperrock' => "Gracz 1 wygrywa",
      'paperscissors' => "Gracz 2 wygrywa",
      'scissorspaper' => "Gracz 1 wygrywa",
      'scissorsrock' => "Gracz 1 wygrywa",
      'rockscissors' => "Gracz 2 wygrywa",
      'rockrock' => "Remis",
      'scissorsscissors' => "Remis",
      'paperpaper' => "Remis"
    }
    # rock < paper
    # rock > scissors
    # paper < scissors

    opt[arg1+arg2]
  end

  puts rps('scissors', 'paper')
  puts rps('rock', 'paper')
  puts rps('scissors', 'scissors')
