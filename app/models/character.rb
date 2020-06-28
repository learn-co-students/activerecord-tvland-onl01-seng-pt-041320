class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  attr_accessor :catchphrase

    def initialize(catchphrase)
      @catchphrase = catchphrase 
    end 

end