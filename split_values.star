def apply(metric):
  grid_power = metric.fields.get("grid_power")
  if 0 < grid_power:
    metric.fields["grid_feed_power"] = 0
    metric.fields["grid_usage_power"] = abs(grid_power)
  if grid_power <= 0:
    metric.fields["grid_feed_power"] = abs(grid_power)
    metric.fields["grid_usage_power"] = 0

  battery_power = metric.fields.get("battery_power")
  if 0 < battery_power:
    metric.fields["battery_usage_power"] = 0
    metric.fields["battery_feed_power"] = abs(battery_power)	
  if battery_power <= 0:
    metric.fields["battery_usage_power"] = abs(battery_power)
    metric.fields["battery_feed_power"] = 0
  
  ownusage = metric.fields.pop("autarcy")
  metric.fields["ownusage"] = ownusage & 0xff
  metric.fields["autarcy"] = ownusage >> 8
  return metric