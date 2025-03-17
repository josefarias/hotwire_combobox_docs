module LayoutHelper
  def paragraph(&block)
    tag.p class: "max-w-2xl text-lg w-full", &block
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
    tag.span text, class: "font-mono font-semibold text-base"
  end

  def article(&block)
    tag.article class: "flex flex-col items-center w-full space-y-12", &block
  end

  def emphasis(&block)
    tag.p class: "max-w-2xl p-4 text-lg border-2 border-black rounded-lg", &block
  end

  def bold(text)
    tag.strong text, class: "font-semibold"
  end
end
