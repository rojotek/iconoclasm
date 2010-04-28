require 'typhoeus'

module Iconoclasm
  module Downloader

    @@user_agent = 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
    
    def self.user_agent=(agent)
      @@user_agent = agent
    end
    
    def self.user_agent
      @@user_agent
    end
    
    def user_agent
      @@user_agent
    end
    
    def get(url)
      Typhoeus::Request.get(url, :user_agent => user_agent, :follow_location => true, :timeout => Iconoclasm.timeout||=1000)
    end
    
    def head(url)
      Typhoeus::Request.head(url, :user_agent => user_agent, :timeout => Iconoclasm.timeout||=1000)
    end
  end
end
