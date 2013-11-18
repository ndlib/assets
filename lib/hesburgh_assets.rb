require "hesburgh_assets/engine"

module HesburghAssets

  def self.host(environment = Rails.env)
    hosts[environment]
  end

  private
    def self.root
      @root ||= File.expand_path(File.dirname(File.dirname(__FILE__)))
    end

    def self.load_yml(file)
      YAML.load_file(File.join(self.root, "config", file))
    end

    def self.hosts
      @hosts ||= self.load_yml('hosts.yml')
    end
end
