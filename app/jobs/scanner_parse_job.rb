class ScannerParseJob < ApplicationJob
  queue_as :default

  def perform(params, remote_ip)

    Scanner.parse_data(params, remote_ip)
    
  end
end
