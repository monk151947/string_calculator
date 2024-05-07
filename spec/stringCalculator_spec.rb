# frozen_string_literal: true

RSpec.describe StringCalculator do
  it "has a version number" do
    expect(StringCalculator::VERSION).not_to be nil
  end

  describe StringCalculator, '#add' do  
      context "given an empty string" do
        it "return 0 for empty string " do
          expect(StringCalculator.add("")).to eq(0)
        end
      end

      context "single numbers" do
        context "given '3'" do
          it "returns 3" do
            expect(StringCalculator.add("3")).to eql(3)
          end
        end

      context "given '20'" do
          it "returns 20" do
            expect(StringCalculator.add("20")).to eql(20)
          end
        end
    end

    context "two numbers" do
      context "given '3,4'" do
        it "returns 7" do
          expect(StringCalculator.add("3,4")).to eql(7)
        end
      end

      context "given '15,100'" do
        it "returns 115" do
          expect(StringCalculator.add("15,100")).to eql(115)
        end
      end

      it "return value 3 for 1,2,2,1,3" do
        expect(StringCalculator.add("1,2,2,1,3")).to eq(9)
       end
    
       it "return value 10 for 3\n3\n3\n1" do
        expect(StringCalculator.add("3\n3\n3\n1")).to eq(10)
       end
    
       it "return 7 for 1\n4,2" do
        expect(StringCalculator.add("1\n4,2")).to eq(7)
       end
    
       it "return 7 for //;1;4;2" do
        expect(StringCalculator.add("//;\n1;4;2")).to eq(7)
       end
    
       it "raise error for negative number" do
        expect{StringCalculator.add("-1")}.to raise_error
       end
    
       it "raise error for negative numbers with message for -1,2,-9" do
        expect{StringCalculator.add("-1,2,-9")}.to raise_error('Negativies not allowed:-1,-9')
       end
    
       it "Number bigger then 1000 should ignored for 1,1001" do
        expect(StringCalculator.add("1,1001")).to eq(1)
       end
    
       it "Number bigger then 1000 should ignored for 1,1001, 2000, 3, 1002, 1" do
        expect(StringCalculator.add("1,1001, 2000, 3, 1002, 1")).to eq(5)
       end
    
       it "Allow multiple uniform delimiters like //***\n3***7***1" do
        expect(StringCalculator.add("//***\n3***7***1")).to eq(11)
       end
    
       it "Allow multiple uniform delimiters with negative values like //***\n3***-7***1***-10" do
        expect{(StringCalculator.add("//***\n3***-7***1***-10"))}.to raise_error('Negativies not allowed:-7,-10')
       end
    
       it "Allow mutiple nonuniform delimiters like ///****\n24;1***;5" do
        expect(StringCalculator.add("///****\n24;1***;5")).to eq(30)
       end
    
       it "Allow mutiple nonuniform delimiters with negative values like ///****\n-24;1***;5" do
        expect{StringCalculator.add("///****\n-24;1***;5")}.to raise_error('Negativies not allowed:-24')
       end
    
       it "Allow mutiple nonuniform delimiters with negative values like ///*-**\n24;1***;5" do
        expect(StringCalculator.add("///*-**\n24;1***;5")).to eq(30)
       end
     end
  end
end
