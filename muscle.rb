require "pry"

trainings = [
  {
    part: "上半身",
    content: ["腕立て伏せ（30回）", "腕立て伏せ（60回）", "腕立て伏せ（100回）"],
  },
  {
    part: "下半身",
    content: ["スクワット (30回)", "スクワット (60回)", "スクワット (100回)"],
  },
  { part: "全身",
    content: ["腕立てバービージャンプ (20回)", "腕立てバービージャンプ (50回)", "腕立てバービージャンプ (100回)"] },
  { part: "腕",
    content: ["ダンベル5キロ.10回 (3セット)", "ダンベル8キロ.10回 (3セット)", "ダンベル10キロ.15回 (3セット)"] },
  { part: "腹筋・背筋",
    content: ["腹筋２０回.懸垂10回(各２セット)", "腹筋30回.懸垂10回(各２セット)", "腹筋30回.懸垂15回(各２セット)"] },
]

trainings.each.with_index(1) do |training, i|
  puts "#{i}. #{training[:part]}プログラム"
end

# プランを選択
print "鍛えたい場所を番号で選択してください > "
training_num = gets.to_i
selected_training = trainings[training_num - 1]

# 負荷レベルの選択
puts "#{selected_training[:part]}プログラムですね。負荷レベルを選択してください。"
print "負荷レベルを入力　> "
level_num = gets.to_i

# binding.pry
# contentメニュー
puts "有難う御座います。
#{selected_training[:content][level_num - 1]}のメニューとなります。"
