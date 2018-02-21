require 'bitcoin'
Bitcoin.network=:testnet3
key = Bitcoin::Key.generate
puts "Private Addr(generate): " + key.priv

puts "Public Addr(generate): "+key.pub
puts "Bitcoin Addr(generate): "+key.addr
sig = key.sign("rajesh")
puts sig
#key.verify("rajesh", sig)
#newKey=Bitcoin::Key.new
#puts "Address(new):"+ Bitcoin::Key.new
#recovered_key = Bitcoin::Key.from_base58(key.to_base58)
#puts recovered_key
