require 'spec_helper'

describe KolabSlackBot::Bot do
  def app
    KolabSlackBot::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end
