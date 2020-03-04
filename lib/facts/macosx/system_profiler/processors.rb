# frozen_string_literal: true

module Facts
  module Macosx
    module SystemProfiler
      class Processors
        FACT_NAME = 'system_profiler.processors'

        def call_the_resolver
          fact_value = Facter::Resolvers::SystemProfiler.resolve(:number_of_processors)
          Facter::ResolvedFact.new(FACT_NAME, fact_value)
        end
      end
    end
  end
end
