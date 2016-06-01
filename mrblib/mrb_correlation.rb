class Array
  def arithmetic_mean
    self.inject(0) { |sigma, x| sigma += x } / self.size.to_f
  end

  def covariance(data, mean_x, mean_y)
    self.zip(data).inject(0) { |sigma, x| sigma += (x[0] - mean_x) * (x[1] - mean_y) }
  end

  def variance(mean)
    self.inject(0) { |sigma, x| sigma += (x - mean) ** 2 }
  end

  # correlation coefficient between self and arg array
  def correlation_coefficient_with(time_series_data)
    raise ArgumentError, "Can not use not same array size" unless self.size == time_series_data.size
    mean_x = self.arithmetic_mean
    mean_y = time_series_data.arithmetic_mean
    cc = self.covariance(time_series_data, mean_x, mean_y) / Math.sqrt(self.variance(mean_x)) / Math.sqrt(time_series_data.variance(mean_y))
  end
end
