module MyAssetHandler
  class << self
    def registered(app)
      app.send :include, InstanceMethods
    end
    alias :included :registered
  end

  module InstanceMethods
    # def asset_url(path, prefix="")
    #   if prefix == "video"
    #     # Do something fancy
    #   else
    #     # super (get the results of higher up the stack, may not be necessary)
    #   end
    # end

    def mp4_path(my_video)
      asset_path :mp4, my_video
    end

    def mp4_tag(my_video)
      tag(:mp4, :src => mp4_path(my_video))
    end
  end
end


