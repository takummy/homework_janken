class Player
  def hand
    puts "0~2の数字を入力してください。"
    play = gets.to_i
    play
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    enem = rand(0..2)
    enem
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    if player_hand < 0 || player_hand > 2
      puts "注:入力できる数字は0~2です!"
      self.again
    elsif (player_hand - enemy_hand + 3) % 3 == 2
      puts "相手は#{enemy_hand}です。あなたの勝ちです。"
    elsif (player_hand - enemy_hand + 3) % 3 == 1
      puts "相手は#{enemy_hand}です。あなたの負けです。"
    else
      puts "あいこです！もう一度！"
      self.again
    end
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end

  def again
    player = Player.new
    enemy = Enemy.new
    self.pon(player.hand, enemy.hand)
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new 
janken.pon(player.hand, enemy.hand)