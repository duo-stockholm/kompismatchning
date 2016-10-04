class StatusUpdate < ApplicationRecord
  enum status: { good: 0, bad: 1 }

  belongs_to :match

  def self.status_for_selection
    statuses.keys.map do |status|
      [I18n.t("activerecord.attributes.status_update.statuses.#{status}"), status]
    end
  end
end
