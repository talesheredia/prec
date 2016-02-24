require 'open-uri'

url = 'http://www.tjrs.jus.br/site_php/precatorios/precatorio.php?aba_opcao_consulta=numero&Numero_Informado=52407_&tipo_pesquisa=por_precatorio&btnPEsquisar=Pesquisar'
doc = Nokogiri::HTML(open(url))
p = Precatorio.new
p.expediente = doc.xpath("//table[1]/tr[1]/td[2]").text.tr("\r\n","").delete(" ").delete(" ")
p.numero = doc.xpath("//table[1]/tr[2]/td[2]").text.tr("\r\n","").strip
p.data_apresentacao = doc.xpath("//table[1]/tr[3]/td[2]").text.tr("\r\n","").strip
p.processo_administrativo = doc.xpath("//table[1]/tr[4]/td[2]").text.tr("\r\n","").strip
p.processo_primeiro_grau = doc.xpath("//table[1]/tr[5]/td[2]").text.tr("\r\n","").strip
p.origem = doc.xpath("//table[1]/tr[6]/td[2]").text.tr("\r\n","").strip
p.pagador = doc.xpath("//table[1]/tr[7]/td[2]").text.tr("\r\n","").strip
p.credor = doc.xpath("//table[1]/tr[8]/td[2]").text.tr("\r\n","").strip
p.advogado = doc.xpath("//table[1]/tr[9]/td[2]").text.tr("\r\n","").strip
p.objeto = doc.xpath("//table[1]/tr[10]/td[2]").text.tr("\r\n","").strip
p.ano = doc.xpath("//table[1]/tr[11]/td[2]").text.tr("\r\n","").strip
p.situacao_atual = doc.xpath("//table[1]/tr[12]/td[2]").text.tr("\r\n","").strip
p.localizacao = doc.xpath("//table[1]/tr[13]/td[2]").text.tr("\r\n","").strip
p.tribunal_origem = doc.xpath("//table[1]/tr[14]/td[2]").text.tr("\r\n","").strip
p.posicao_crescente = doc.xpath("//table[1]/tr[15]/td[2]").text.tr("\r\n","").strip.to_i
p.posicao_cronologica = doc.xpath("//table[1]/tr[16]/td[2]").text.tr("\r\n","").strip.to_i
p.save

#<-- Precatorio.group_by_hour(:created_at).minimum(:posicao_cronologica).delete_if { |h,v| v == 0 } -->

# <% prec = Precatorio.all
# ha = Hash.new
# prec.each do |p|
#   ha[p.created_at] = p.posicao_cronologica
# end
# %>
