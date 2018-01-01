class YouTube < Liquid::Tag
  SYNTAX = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(_tag_name, markup, tokens)
    super

    match_data = SYNTAX.match(markup)
    raise "No YouTube ID provided in the 'youtube' tag" unless match_data

    @id = match_data[0]
  end

  def render(_context)
    %(<iframe width="600" height="600"
              src="https://www.youtube.com/embed/#{@id}?color=white&theme=light">
      </iframe>)
  end

  Liquid::Template.register_tag 'youtube', self
end
