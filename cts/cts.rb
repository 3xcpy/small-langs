## Cyclic Tag System
# Usage: ruby cts.rb <initial data string> <delimiter> <productions>
# remove the 'sleep 0.5' for maximum execution speed

d = ARGV[0].dup
i = ARGV[1].dup

ps = ARGV[2..-1]
pi = 0

if ps.empty?
    puts d
    exit
end

while !d.empty?
    puts d
    if !d.start_with? i
		d << ps[pi] 
    end
    d = d[1..-1]
    pi += 1
    if pi >= ps.size
        pi = 0
    end
    sleep 0.5
end
