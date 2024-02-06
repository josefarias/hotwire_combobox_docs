module LayoutHelper
  def paragraph(&block)
    tag.p class: "max-w-2xl text-lg", &block
  end

  def link(name, uri)
    link_to name, uri, target: :_blank, rel: :noreferrer, class: "underline font-semibold"
  end

  def sp
    safe_join [ tag.br ] * 2
  end

  def content(&block)
    tag.div class: "flex flex-col items-center w-full space-y-8", &block
  end

  def mono(text)
    tag.span text, class: "whitespace-nowrap font-mono font-semibold"
  end

  def article(&block)
    tag.article class: "flex flex-col items-center w-full space-y-12", &block
  end
end
