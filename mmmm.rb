trainings = [
  { part: "上半身" },
  { part: "下半身" },
  { part: "全身" },
  { part: "腕" },
  { part: "腹筋・背筋" }
]

trainings.each.with_index(1) do |part, i|
  puts "#{i}. #{part}プログラム"
end
