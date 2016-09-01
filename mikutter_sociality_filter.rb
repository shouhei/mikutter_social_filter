# -*- coding: utf-8 -*-

Plugin.create :mikutter_sociality_filter do
  module Pango
    class << self
      alias parse_markup_org parse_markup

      def parse_markup(text)
        parse_markup_org(text.gsub(/(疲れた|死ね)/, "にゃーん"))
      end
    end
  end
  true
end
