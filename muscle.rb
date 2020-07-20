# encoding: utf-8
require "./muscle_methods"

trainings = [
  {
    part: "上半身",
    content: ["腕立て伏せ（30回)", "腕立て伏せ（60回", "腕立て伏せ（100回"],
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
    content: ["腹筋２０回.懸垂10回(各２セット)", "腹筋30回.懸垂10回(各２セット)", "腹筋30回.懸垂15回(各3セット)"] },
]

display(trainings)
selected_training = choice_plan(trainings)
level_num = level_choice(selected_training)
training_menu(selected_training, level_num)
