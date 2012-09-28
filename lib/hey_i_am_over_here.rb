require "hey_i_am_over_here/version"
require 'dnssd'

Thread.abort_on_exception = true
module HeyIAmOverHere

  SERVICE = "_http._tcp"

  def self.publish(name = 'My App', port = 3000, description = '')
    STDERR.puts "Publishing #{name} on #{port}"
    port = port.to_i

    tr = DNSSD::TextRecord.new
    tr["description"] = description

    DNSSD.register(name, SERVICE, "local", port.to_i, tr.encode) do |reply|
      STDERR.puts "Announcing #{name}..."
    end
  end
end

