def times_loop(loops_num)
    puts "how many times must I loop you?!"
    loopd_num = 0
    loops_num.times() do
        loopd_num += 1
        puts "#{loopd_num} loop!"
    end
    puts "that's #{loopd_num} loops!"
end

times_loop(5)