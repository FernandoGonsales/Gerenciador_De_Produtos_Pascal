Program Pzim ;

Type
registro = record
  nome: string;
  codigo: integer;
  quantidade: integer;
  preco: real;
  removido: boolean;
End;

Var
quantidade: integer;
produtos: array[1..100] of registro;
auxProdutos: array[1..100] of registro;
contador: integer;
opcao: integer;
indexAtual: integer;
codigoProdutoParaRemocao: integer;
Begin
  
  opcao := 0;
  indexAtual := 1;
  while(opcao <> 4) do
  begin;
    clrscr;
    writeln(' -----------------------');
    writeln('          [MENU]         ');
    writeln(' -----------------------');
    writeln(' ');
    writeln(' [1] CADASTRAR PRODUTO ');
    writeln(' [2] LISTAR PRODUTO ');
    writeln(' [3] EXCLUIR PRODUTO ');
    writeln(' [4] SAIR ');
    writeln(' ');
    write(' Escolha uma opção: ');
    read(opcao);
    
    case (opcao) of
      1:	begin;
        clrscr;
        write(' Informe a quantidade de produtos á serem cadastrados: ');
        read(quantidade);
				clrscr;
        for contador:= 1 to quantidade do
        begin;
          Writeln(' Cadastrando produto ', contador , ' de ', quantidade);
          Writeln(' ');
          Write(' Informe o nome do produto: ');
          read(produtos[indexAtual].nome);
          Write(' Informe o código do produto: ');
          read(produtos[indexAtual].codigo);
          Write(' Informe a quantidade do produto: ');
          read(produtos[indexAtual].quantidade);
          Write(' Informe o preço do produto: ');
          read(produtos[indexAtual].preco);
          indexAtual := indexAtual + 1;
          clrscr;
        end;
      end;
      
      2:	begin;
        clrscr;
        writeln('---------- [LISTA DE PRODUTOS] ----------');
        writeln(' ');
        for contador := 1 to indexAtual - 1 do
        begin;
          if (produtos[contador].removido = false) then
          begin;
            writeln(' Nome: ', produtos[contador].nome, ' | Quantidade ', produtos[contador].nome, ': ', produtos[contador].quantidade, ' | Preço ', produtos[contador].nome,  ': R$ ',produtos[contador].preco:3:2, ' | Código ', produtos[contador].nome, ': ', produtos[contador].codigo);
            writeln(' ');
					end;
				end;
				writeln('-------------------------------------------');
        writeln(' ');
        writeln(' Pressione QUALQUER TECLA para reotornar ao MENU');
				readkey;
      end;
      
      3:	begin;
        clrscr;
        writeln('---------- [LISTA DE PRODUTOS] ----------');
        writeln(' ');
        for contador := 1 to indexAtual - 1 do
        begin;
          if (produtos[contador].removido = false) then
          begin;
            writeln(' Nome: ', produtos[contador].nome, ' | Código: ', produtos[contador].codigo);
          end;
        end;
        writeln(' ');
        writeln('-------------------------------------------');
        writeln(' ');
        writeln(' Digite o CÓDIGO do produto para REMOVER');
        writeln(' ');
        writeln(' Para CANCELAR a exclusão digite um código INEXISTENTE');
        read(codigoProdutoParaRemocao);
        for contador := 1 to indexAtual - 1 do
        begin;
          if ((codigoProdutoParaRemocao = produtos[contador].codigo) and (produtos[contador].removido = false)) then
          begin;
            produtos[contador].removido := true;
          end;
        end;
      end;
      
      4:	begin;
        write(' Pressione ENTER para sair...');
        readkey;
      end;
      else
      clrscr;
      writeln(' Opção inválida!!!...');
      writeln(' ');
      writeln(' Pressione ENTER para voltar ao MENU...');
      readkey;
    end;
  end;
End.
