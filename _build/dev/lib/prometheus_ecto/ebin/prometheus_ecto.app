{application,prometheus_ecto,
             [{modules,['Elixir.Prometheus.EctoInstrumenter',
                        'Elixir.Prometheus.EctoInstrumenter.Config']},
              {optional_applications,[]},
              {applications,[kernel,stdlib,elixir,logger,prometheus_ex]},
              {description,"Prometheus monitoring system client Ecto integration. Observes queries duration.\n"},
              {registered,[]},
              {vsn,"1.4.3"}]}.
