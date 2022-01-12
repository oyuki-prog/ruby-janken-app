puts "じゃーんけーん…"
puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
while janken = gets
  if janken.chomp.to_i > 3 || !(janken.chomp =~ /^[0-9]+$/)
    puts "0から3までの数字で指定してください"
    puts "じゃーんけーん…"
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    next
  end
  
  enemy_hand_number = rand(3)

  case enemy_hand_number
  when 0
    enemy_hand = "グー"
  when 1
    enemy_hand = "チョキ"
  when 2
    enemy_hand = "パー"
  end

  case janken.chomp.to_i
  when 0
    puts "あなたの出した手  グー"
    puts "あいての出した手  #{enemy_hand}"
    puts "-------------------"
    if enemy_hand_number == 0
      puts "あいこで…"
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      next
    elsif enemy_hand_number == 1
      iswin = 1
    else
      iswin = 0
    end
  when 1
    puts "あなたの出した手  チョキ"
    puts "あいての出した手  #{enemy_hand}"
    puts "-------------------"
    if enemy_hand_number == 0
      iswin = 0
    elsif enemy_hand_number == 1
      puts "あいこで…"
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      next
    else
      iswin = 1
    end
  when 2
    puts "あなたの出した手  パー"
    puts "あいての出した手  #{enemy_hand}"
    puts "-------------------"
    if enemy_hand_number == 0
      iswin = 1
    elsif enemy_hand_number == 1
      iswin = 0
    else
      puts "あいこで…"
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      next
    end
  when 3
    puts "もっと戦おうぜ〜"
    break
  end

  enemy_direction_number = rand(4)
  if iswin == 0
    mine = "向いた"
    enemy = "指した"
    result = "あなたの負け"
  else
    mine = "指した"
    enemy = "向いた"
    result = "あなたの勝ち"
  end

  case enemy_direction_number
  when 0
    enemy_direction = "上"
  when 1
    enemy_direction = "左"
  when 2
    enemy_direction = "右"
  when 3
    enemy_direction = "下"
  end


  puts "あっちむいて〜"
  puts "0(上) 1(左) 2(右) 3(下) 4(戦わない)"
  while direction_number = gets
    if direction_number.chomp.to_i > 4 || !(direction_number.chomp =~ /^[0-9]+$/)
      puts "0から4までの数字で指定してください"
      puts "あっちむいて〜"
      puts "0(上) 1(左) 2(右) 3(下) 4(戦わない)"
      next
    end
    if direction_number.chomp.to_i == 4
      puts "途中で辞めるのかよ〜"
      exit
    end
    case direction_number.chomp.to_i
    when 0
      direction = "上"
    when 1
      direction = "左"
    when 2
      direction = "右"
    when 3
      direction = "下"
    end
    puts "あなたの#{mine}向き  #{direction}"
    puts "あいての#{enemy}向き  #{enemy_direction}"
    puts "-------------------"
    if enemy_direction_number == direction_number.chomp.to_i
      puts result
      exit
    else
      puts "じゃーんけーん…"
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      break
    end
  end
  next
end