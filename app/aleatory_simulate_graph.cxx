
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

#define SIMULACOES 999

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

  duration<double> tempo_simulacao = duration<double>(300.0000);
  duration<double> tempo = duration<double>(0.0000) ;   
  steady_clock::time_point t0 = steady_clock::now();
  steady_clock::time_point t1;  

  std::cout << "simulações";
  int flag = 1; 
  while (tempo < duration<double>(tempo_simulacao))
  {
    //lê o verilog do circuito
    parser::parse_verilog_file(v, argv[1]);  
    //converte o verilog no grafo nand
    convert(v, b);  
    //gera o map de entradas apartir das entradas do circuito verilog
    gen.generate_inputs(v.inputs, input);
    //simula o grafo nand e salva as saídas (primeira simulação)
    simulate(input, output, b);
    
    if (flag == 1){
        print_mapx(input);
        print_mapx(output);
        std::cout << '\n';
        flag = 0;
    }

    grava_primeiras_entradas(input);
    grava_primeira_simulacao(output);

    for (int j = 0; j < SIMULACOES; ++j)
    {
      gen.generate_inputs(v.inputs, input);
      
      simulate(input, output, b);//simula as entradas até as saídas usando grafo nand b
      soma_mintermos_1_entradas(input);   
      //soma os resultados das saídas sendo elas 1 ou 0 gravando em um mapFinal com a soma das saídas
      soma_mintermos_1(output);     
    }
    std::cout << SIMULACOES+1;
    print_maps_finais(mapFinalEntradas);
    print_maps_finais(mapFinalSaidas);
    mapFinalEntradas.clear();
    mapFinalSaidas.clear(); 
    std::cout << '\n';

    t1 = steady_clock::now();
    tempo = duration_cast<duration<double>>(t1-t0);
    
  }

  return 0;

}