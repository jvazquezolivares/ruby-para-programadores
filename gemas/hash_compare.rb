require "hash_compare"

a = {:a=>"booo", :b=>"jooo", :c=>"2012-10-26 11:28:19 +0530", :e=> "e should be deleted"}
b = {:a=>"booo", :b=>"jooo", :c=>"2012-10-26 16:28:19 +0530", :d=>"Boom Thata"}

hc = HashCompare.new(a, b)
p hc.newly_added
p hc.deleted
p hc.changed
p hc.unchanged
p hc.same?
hc.old_hash = b
p hc.same?