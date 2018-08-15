require 'spec_helper'

describe KolabSlackBot::Bot do
  subject { KolabSlackBot::Bot.instance }

  it_behaves_like 'a slack ruby bot'
end
