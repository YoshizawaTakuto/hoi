def janken
    puts "じゃんけん・・・"
    puts "0(グー) 1(チョキ) 2(パー) 3(やめる)"
    p "出したい手の数字を入力"

    my_number1 = gets.chomp.to_i 
    cpu_number1 = rand(3) 
    

    hands1 = ["グー", "チョキ", "パー"]

    my_hand1 = hands1[my_number1] 
    cpu_hand1 = hands1[cpu_number1] 
    
    if my_number1 == cpu_number1
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand1}"
        puts "相手：#{cpu_hand1}"
        puts "------------------------"
        puts "あいこ"
        return janken
        
    elsif my_number1 > 3
        puts "0~2の数字を入力してください"
        return janken
        
    elsif my_number1 == 3
        puts "あきた"
        
    elsif (my_number1 == 0 && cpu_number1 == 1) || (my_number1 == 1 && cpu_number1 == 2) || (my_number1 == 2 && cpu_number1 == 0)
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand1}"
        puts "相手：#{cpu_hand1}"
        puts "------------------------"
        return my_hoi
        
    else
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand1}"
        puts "相手：#{cpu_hand1}"
        puts "------------------------"
        return cpu_hoi
    end
end

def my_hoi
    puts "自分：あっちむいて〜・・・"
    puts "0(上) 1(右) 2(下) 3(左)"
    p "出したい手の数字を入力"
    
    my_number2 = gets.chomp.to_i
    cpu_number2 = rand(4)
    
    hands2 = ["上", "右", "下", "左"]
    
    my_hand2 = hands2[my_number2]
    cpu_hand2 = hands2[cpu_number2]
    
    if my_number2 == cpu_number2
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand2}"
        puts "相手：#{cpu_hand2}"
        puts "------------------------"
        puts "勝利♪"
    else
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand2}"
        puts "相手：#{cpu_hand2}"
        puts "------------------------"
        return janken
    end
    
end

def cpu_hoi
   puts "相手：あっちむいて〜・・・"
    puts "0(上) 1(右) 2(下) 3(左)"
    p "出したい手の数字を入力"
    
    my_number2 = gets.chomp.to_i
    cpu_number2 = rand(4)
    
    hands2 = ["上", "右", "下", "左"]
    
    my_hand2 = hands2[my_number2]
    cpu_hand2 = hands2[cpu_number2]
    
    if my_number2 == cpu_number2
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand2}"
        puts "相手：#{cpu_hand2}"
        puts "------------------------"
        puts "敗北。。。"
    else
        puts "ほい！"
        puts "------------------------"
        puts "自分：#{my_hand2}"
        puts "相手：#{cpu_hand2}"
        puts "------------------------"
        return janken
    end
end

janken
