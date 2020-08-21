def times_loop(loops_num)
    puts "how many times must I loop you?!"
    loopd_num = 0
    loops_num.times do
        loopd_num += 1
        puts "Loop #{loopd_num}!"
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

def destructive_while_bisect(sorted_arr, target)
    # this doesn't work the way it should, but I want to move on
    mid = sorted_arr.length / 2
    rvix = sorted_arr.length / 2
    
    while sorted_arr[mid] != target do
        if sorted_arr[mid] > target
            sorted_arr = sorted_arr[0..mid-1]
            mid = sorted_arr.length / 2
            rvix = rvix + mid - 1
        else
            sorted_arr = sorted_arr[mid+1..sorted_arr.length]
            mid = sorted_arr.length / 2
            rvix = rvix + mid + 1
        end
    end
    puts "target #{sorted_arr[mid]} found at index #{rvix}!"
end

sample_arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
sample_arr.each do |el|
    destructive_while_bisect(sample_arr, el)    
end
