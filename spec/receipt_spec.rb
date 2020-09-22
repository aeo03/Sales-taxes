require './lib/receipt'

RSpec.describe Receipt do
    let (:basket) { Receipt.new }
    let (:item) {["1 imported box of chocolates at 10.00", "1 imported bottle of perfume at 47.50"]}

    describe '#print_receipt' do
      it 'test inputs and the expected outputs' do
        expect do 
          basket.print_receipt(item)
        end.to output(
          "\"1 imported box of chocolates: 10.5\"\n\"1 imported bottle of perfume: 54.63\"\n\"Sales Tax: 7.63\"\n\"Total: 65.13\"\n"
          ).to_stdout
      end
    end
end

