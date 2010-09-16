require 'lib/qq-pengyou'

q = QQPengyou.new(10158,'d3ef8c1c6770480685e8af870ec31b0b','app10158')

openid = '00000000000000000000000001B2DB35'
openkey = '508E0036F70F48BB77705B3D9886B4C8BAB35841BC960641'
puts q.get_user_info(openid,openkey).inspect
puts ""
puts q.get_friend_list(openid,openkey).inspect
