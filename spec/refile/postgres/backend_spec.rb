require "spec_helper"

RSpec.describe Refile::Postgres::Backend do
  let(:db_connection) { CONNECTION_FACTORY }
  let(:backend) { Refile::Postgres::Backend.new(db_connection, max_size: 100) }
  it_behaves_like :backend

  it 'can reconnect' do
    old_connection = backend.connection
    old_connection.close

    expect(old_connection.finished?).to be true
    expect(backend.connection.finished?).to be false
  end
end

