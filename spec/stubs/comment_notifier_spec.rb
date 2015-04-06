require 'spec_helper'

describe CommentNotifier do
   it 'spec_name' do
     comment = build_stubbed('comment')
   end

   def build_stubbed(model)
     allow(model).to receive(new).
       with(title)
   end
end
