module HighlighterHelper
  def highlight_erb(code, note = nil)
    highlight_code code, :erb, note
  end

  def highlight_rb(code, note = nil)
    highlight_code code, :ruby, note
  end

  def highlight_css(code, note = nil)
    highlight_code code, :css, note
  end

  private
    def highlight_code(code, lang, note)
      code = CodeRay.scan(unindent(code), lang).tap do |scan|
        scan.input = scan.input.gsub("&lt;", "<").gsub("&gt;", ">")
      end.div(line_numbers: :table, css: :class).html_safe

      tag.pre class: "w-full max-w-2xl overflow-x-auto" do
        safe_join [ note, code ]
      end
    end

    def unindent(code)
      min_indent = code.each_line.compact_blank.min_by { |line| line[/^\s*/].size }[/^\s*/].size
      code.each_line.map { |line| line[min_indent..-1] }.join
    end
end
