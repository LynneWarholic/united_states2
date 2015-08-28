module ApplicationHelper

  def check_answer(answer)
    statelist = ['Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming']

    correct = false

    statelist.each do |c|
      if answer == c
        correct = true
      end
    end

    return correct
  end

  def check_for_dup(answer, database)
    
    is_dup = false

    database.each do |d|
      if answer == d.name
        is_dup = true
      end
    end

    return is_dup
    
  end

end