# encoding: utf-8

# トレーニング内容（training_list）
def display(trainings)
  trainings.each.with_index(1) do |training, i|
    puts "#{i}. #{training[:part]}プログラム"
  end
end

# プランを選択(plan_choice)
def choice_plan(trainings)
  print "鍛えたい場所を番号で選択してください > "
  while true
    training_num = gets.to_i
    break if training_num >= 1 && training_num <= 5
    print "もう一度入力してください > "
  end
  trainings[training_num - 1]
end

# 負荷レベルの選択(level_choice)
def level_choice(selected_training)
  puts "#{selected_training[:part]}プログラムですね。負荷レベルを選択してください。"
  print "負荷レベルを入力　> "
  while true
    level_num = gets.to_i
    break if level_num >= 1 && level_num <= 3
    print "正しい入力をしてください > "
  end
  level_num
end

# traning_menu
def training_menu(selected_training, level_num)
  puts "有難う御座います。
  #{selected_training[:content][level_num - 1]}のメニューとなります。"
end
