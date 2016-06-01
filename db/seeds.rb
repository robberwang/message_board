cate1 = Category.create(name: '最新話題')
cate2 = Category.create(name: '年度排行')
post1 = Post.create(title: '妖精的尾巴', content: '妖精的尾巴ZERO動畫全集改編自真島浩創作的少年熱血類漫畫。')
post2 = Post.create(title: '暗殺教室', content: '《暗殺教室》描述揚言要炸掉地球的超生物「殺老師」，各同學想盡辦法殺死這名老師，故事圍繞著非日常的校園生活而展開。')

['這真是太捧了','給你一個讚！！'].each do |rc|
  post1.comments.create(content: rc)
end

['太酷了','這部什麼時候上映呢？'].each do |rc|
  post2.comments.create(content: rc)
end

post1.categories << cate1
post2.categories << cate1
post1.categories << cate2