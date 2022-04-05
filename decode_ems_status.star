def apply(metric):
  ems_status = metric.fields.get("ems_status")
 
  metric.fields["battery_charging_inhibited"] =     bool(ems_status & 0b0000001)
  metric.fields["battery_discharging_inhibited"] =  bool(ems_status & 0b0000010)
  metric.fields["emergency_power_mode"] =           bool(ems_status & 0b0000100)
  metric.fields["weather_based_charging"] =         bool(ems_status & 0b0001000)
  metric.fields["net_feed_throttling"] =            bool(ems_status & 0b0010000)
  metric.fields["charging_locked_time"] =           bool(ems_status & 0b0100000)
  metric.fields["discharging_locked_time"] =        bool(ems_status & 0b1000000)

  return metric