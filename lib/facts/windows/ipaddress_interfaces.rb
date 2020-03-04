# frozen_string_literal: true

module Facts
  module Windows
    class IpaddressInterfaces
      FACT_NAME = 'ipaddress_.*'

      def call_the_resolver
        arr = []
        interfaces = Facter::Resolvers::Networking.resolve(:interfaces)
        interfaces&.each do |interface_name, info|
          arr << Facter::ResolvedFact.new("ipaddress_#{interface_name}", info[:ip], :legacy) if info[:ip]
        end

        arr
      end
    end
  end
end
