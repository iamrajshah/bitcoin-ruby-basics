require 'bitcoin'
tx = "71b38308cc7f4cdd4020c02a4ffd195835beebcdd75f5d436ddcb3c6503c3944"
#tx = Bitcoin::Protocol::Tx.new(raw_tx)
puts tx
puts "Transaction hash\n"
puts tx.hash 
puts "In:"
puts tx.in.size 
puts "Out:"
puts tx.out.size 
puts "Tx_to hash:"
puts tx.to_hash 
#Bitcoin::Protocol::Tx.from_json( tx.to_json )
#Bitcoin::Script.new(tx.out[0].pk_script).to_string
