
require_relative 'bitcoinrpc.rb'

include Bitcoin::Builder

  bitcoinRpc = BitcoinRPC.new('http://rajesh:jab_raj_meets_satoshi@127.0.0.1:18332')
#  p bitcoinRpc.getbalance
#  p bitcoinRpc.listaccounts
#  puts JSON.pretty_generate(bitcoinRpc.listaddressgroupings)
#  puts JSON.pretty_generate(bitcoinRpc.listtransactions)


key = Bitcoin::Key.from_base58("cQ8sHVJvN4C5BcD6YjBzWgTCVxsYy6jpwuRzReJ1enoDrdr9XN9X")

new_tx = build_tx do |t|
  t.input do |i|
    i.prev_out prev_tx
    i.prev_out_index previous_vout
    i.signature_key key
  end
  t.output do |o|
    o.value 31737
    o.script {|s| s.recipient "n4oacskdevtWjGbhLDHibTuiuY4e5hk5bf" }
  end
end


 $rawTransactionHash = bitcoinRpc.createrawtransaction [{"txid":bfcab5e65b4c35d6b66ad1341ea28ade4dd70bf59edb96dbf9765db09dcb38b9,"vout":0}] {"mnU7Qn4ynccopKWoz4tU1EAiUiB6doWELH":21,{"mpoDJQKMygRnrsSgvaPmp7A1JCa5YshCnB":28}

$privateKey=

$rawTransactionHash="0200000001b938cb9db05d76f9db96db9ef50bd74dde8aa21e34d16ab6d6354c5be6b5cabf0000000000ffffffff01805b6d29010000001976a9144c3f3e007a54fb5ad6c0cab6f9658f20d314081388ac00000000"
puts JSON.pretty_generate(bitcoinRpc.decoderawtransaction $rawTransactionHash)


  $signedTransactionHash = bitcoinRpc.signrawtransaction $rawTransactionHash.to_s 
puts $signedTransactionHash
puts JSON.pretty_generate(bitcoinRpc.decoderawtransaction $signedTransactionHash["hex"])

  $transactionHash = bitcoinRpc.sendrawtransaction $signedTransactionHash["hex"]
  puts $transactionHash.to_s


=begin
  puts $rawTransactionHash.to_s
  puts JSON.pretty_generate(bitcoinRpc.decoderawtransaction $rawTransactionHash)

  $signedTransactionHash = bitcoinRpc.signrawtransacion $rawTransactionHash
  puts JSON.pretty_generate(bitcoinRpc.decoderawtransaction $signedTransactionHash)
  
  $transactionHash = bitcoinRpc.sendrawtransaction $signedTransactionHash.hex
  puts $transactionHash.to_s

=end
