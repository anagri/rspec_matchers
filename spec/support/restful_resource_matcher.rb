module RestfulMatcherUtils
  class HaveCreatedResource
    def initialize(resource, location)
      @resource = resource
      @location = location
    end

    def matches?(response)
      if !be_created.matches?(response)
        @message = be_created.failure_message_for_should(response)
      elsif !be_nil.matches?(@resource)
        @message = "expected it to be non nil"
      end
    end

    def failure_message_for_should(response)
      @message
    end
  end

  def have_created_resource(resource, location)
    HaveCreatedResource.new(resource, location)
  end
end