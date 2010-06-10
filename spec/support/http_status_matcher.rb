module RestfulMatcherUtils
  class BeCreated
    def matches?(response)
      response.code == "201"
    end

    def failure_message_for_should(response)
      "expected the response code to be created(201) but was #{response.code}"
    end

    def failure_message_for_should_not(response)
      "expected the response code not to be created(201) but was #{response.code}"
    end
  end

  def be_created
    BeCreated.new
  end
end