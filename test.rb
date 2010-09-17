# coding: utf-8 
require 'lib/qq-pengyou'

q = QQPengyou.new(10158,'d3ef8c1c6770480685e8af870ec31b0b','app10158')

# 测试的时候需要更新 openid 和 openkey 每次登录后都会有变化
# 可以在 http://opensns.qq.com/apps/tools 这里得到你的 QQ 的 openid 和 openkey
openid = '00000000000000000000000001B2DB35'
openkey = '018CD1F8174C1D5355849097CF3E26F70DDD1725F95BACF4'
puts q.get_user_info(openid,openkey).inspect
puts ""

friends = q.get_friend_list(openid,openkey)
puts friends.inspect
fopenids = friends['items'].collect { |item| item['openid'] }


puts q.get_multi_info(openid, openkey, :fopenids => fopenids).inspect
puts ""

puts q.setuped?(openid, openkey).inspect
puts ""

puts q.vip?(openid, openkey).inspect
puts ""

puts q.get_emotion(openid, openkey,:fopenids => fopenids).inspect