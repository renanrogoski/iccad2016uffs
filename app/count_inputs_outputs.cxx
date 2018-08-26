
#include <inputs_generator.hpp>
#include <verilog_parser.hpp>
#include <graph_simulator.hpp>
#include <verilog_simulator.hpp>
#include <verilog_graph_adapter.hpp>

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <chrono>

using namespace verilog;
using namespace std::chrono;


std::map<std::string, int> mapFinalEntradas;
std::map<std::string, int> mapFinalSaidas;

template<typename Map>
void print_mapx(Map& m)
{    
  for(auto& p: m)
  {
    std::cout << ',' << p.first ;
  } 
}

template<typename Map>
void print_maps_finais (Map& m)
{
  int i = 1;   
  for(auto& p: m)
  {
    std::cout << ',' << p.second;           
  }  
}

template<typename Map>
void grava_primeiras_entradas(Map& m)
{
  for(auto& p: m)
    {
        mapFinalEntradas.insert(std::pair<std::string, int>(p.first,p.second));
    }
}

template<typename Map>
void grava_primeira_simulacao(Map& m)
{
  for(auto& p: m)
    {
        mapFinalSaidas.insert(std::pair<std::string, int>(p.first,p.second));
    }
}

template<typename Map>
void soma_mintermos_1_entradas(Map& m)
{
  for(auto& p: m)
  {
    mapFinalEntradas[p.first] = mapFinalEntradas[p.first] +  p.second;
  }
}

template<typename Map>
void soma_mintermos_1(Map& m)
{
  for(auto& p: m)
  {
    mapFinalSaidas[p.first] = mapFinalSaidas[p.first] +  p.second;
  }
}  

int main(int nargs, char** argv){  
  
  Generator gen;
  ast::Verilog v;
  graph::G_builder b;
  std::map<std::string, bool> input, output;
     
  //lê o verilog do circuito
  parser::parse_verilog_file(v, argv[1]);  
  //converte o verilog no grafo nand
  convert(v, b);

  int count_inputs = 0;
  int count_outputs = 0; 
 
  //gera o map de entradas apartir das entradas do circuito verilog
  gen.generate_inputs(v.inputs, input);
  //simula o grafo nand e salva as saídas (primeira simulação)
  simulate(input, output, b);
    
  for(auto& p: input)
  {
    count_inputs = count_inputs + 1 ;
  }
  
  std::cout << count_inputs << '\n';
  
  for(auto& p: output)
  {
    count_outputs = count_outputs + 1 ;
  }

  std::cout << count_outputs ;
  



    // if (flag == 1){
    //     print_mapx(input);
    //     print_mapx(output);
    //     std::cout << '\n';
    //     flag = 0;
    // }

    // grava_primeiras_entradas(input);
    // grava_primeira_simulacao(output);

    
    //   gen.generate_inputs(v.inputs, input);
      
    //   simulate(input, output, b);//simula as entradas até as saídas usando grafo nand b
    //   soma_mintermos_1_entradas(input);   
    //   //soma os resultados das saídas sendo elas 1 ou 0 gravando em um mapFinal com a soma das saídas
    //   soma_mintermos_1(output);     
    
    
    // print_maps_finais(mapFinalEntradas);
    // print_maps_finais(mapFinalSaidas);
    // mapFinalEntradas.clear();
    // mapFinalSaidas.clear(); 
    // std::cout << '\n';

    
    
 

  return 0;

}