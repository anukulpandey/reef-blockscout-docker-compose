{application,prometheus_phoenix,
             [{modules,['Elixir.Prometheus.PhoenixInstrumenter',
                        'Elixir.Prometheus.PhoenixInstrumenter.Config']},
              {optional_applications,[]},
              {applications,[kernel,stdlib,elixir,logger,prometheus_ex]},
              {description,"Prometheus monitoring system client Phoenix instrumenter.\n"},
              {registered,[]},
              {vsn,"1.3.0"}]}.
