require 'spec_helper'

describe NilGuard do
  using NilGuard::Syntax

  it 'nil safe method chain' do
    expect(
      [1, 2, 3].map {|n| n > 2 ? nil : n * 2}
        .map {|n| n.|.to_s.|.gsub(/4/, "four")}
    ).to eq ["2", "four", nil]
  end
end
