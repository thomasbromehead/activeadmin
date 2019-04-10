module TestEnvironment
  extend self

  def rails_version
    Gem.loaded_specs["rails"].version
  end

  def has_zeitwerk?
    rails_version >= Gem::Version.new("6.0.0.beta3")
  end
end
