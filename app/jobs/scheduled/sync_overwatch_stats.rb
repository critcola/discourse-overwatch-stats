module Jobs
  class SyncOverwatchStats < Jobs::Scheduled
    every 1.hour

    def execute(args)
      ::OverwatchStatsServices::MasterOverwatch.sync if SiteSetting.discourse_overwatch_stats_enabled
    end
  end
end
