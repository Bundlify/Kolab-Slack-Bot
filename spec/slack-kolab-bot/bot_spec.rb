require 'spec_helper'

describe SlackKolabBot::Bot do
  def app
    SlackKolabBot::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end
