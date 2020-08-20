def times_loop(loops_num)
    puts "how many times must I loop you?!"
    loopd_num = 0
    loops_num.times do
        loopd_num += 1
        puts "#{loopd_num} loop!"
    end
    puts "that's #{loopd_num} loops!"
end

times_loop(10)

def base_2_range_exps_from_neg_to_pos(start, end_)
    exp_range = start..end_
    rarr = []
    exp_range.each do |superscriptoid|
        rarr.push(2**superscriptoid)
    end
    puts rarr
end

base_2_range_exps_from_neg_to_pos(-10, 10)