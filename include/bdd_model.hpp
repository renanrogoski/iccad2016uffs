#pragma once

#include <data_model.hpp>

#include <iostream>
#include <string>
#include <vector>
#include <stdexcept>
#include <map>
#include <sstream>
#include <string>
#include <memory>
/*#include <boost/tuple/tuple.hpp>
#include <boost/graph/graph_traits.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/copy.hpp>
#include <boost/property_map/property_map.hpp>
#include <boost/graph/graphviz.hpp>
*/

namespace verilog
{
  namespace bdd {
    using std::vector;
    using std::shared_ptr;
    using std::map;
    vector<std::string> symbol_table;

    struct Node {
      /**
       * Index of the node's input in the symbol table
       */
      const int s;
      /**
       * marks if this is a representative node.
       */
      const int  r_t;
      /**
       * @p is the positive edge for this node.
       * @n is the negative edge for this node.
       */
      shared_ptr<Node> p, n;
      Node(const int s_, const int r_t_): 
        s(s_), r_t(r_t_)
      {}
      Node(const int s_, const int r_t_, 
          shared_ptr<Node> p_, 
          shared_ptr<Node> n_): 
        s(s_), r_t(r_t_), p(p_), n(n_)
      {}


    };

    struct BDD {
      std::shared_ptr<Node> zero, one;
      std::map<int, vector<shared_ptr<Node>>> layers;

      BDD():
        zero(new Node(0, 0)),
        one(new Node(1, 1))
      { 
        //zero = new Node(0, 0, NULL, NULL);
        //one  = new Node(1, 1, NULL, NULL);
        layers[0].push_back(zero);
        layers[0].push_back(one);
      }

      shared_ptr<Node> add_simple_input(int s) {
        return create_node(s, s, one, zero);
      }

      shared_ptr<Node> negate(shared_ptr<Node> x) {
        if(x == zero) return one;
        if(x == one) return zero;

        return create_node(x->s, -1, x->p, x->n);
      }

      shared_ptr<Node> conjunction(
          shared_ptr<Node> x, 
          shared_ptr<Node> y) {
        if(x == one) return y;
        if(y == one) return x;
        if(x == zero) return zero;
        if(y == zero) return zero;

        if(x->s == y->s) {
          auto p = conjunction(x->p, y->p);
          auto n = conjunction(x->n, y->n);
          return create_node(x->s, -1, p, n);
        }
        else if(x->s > y->s) {
          auto p = conjunction(x->p, y);
          auto n = conjunction(x->n, y);
          return create_node(x->s, -1, p, n);
        }
        else { // x < y
          auto p = conjunction(y->p, x);
          auto n = conjunction(y->n, x);
          return create_node(y->s, -1, p, n);
        }
      }

      shared_ptr<Node> create_node(int s, int r, shared_ptr<Node> p, shared_ptr<Node> n) {
        shared_ptr<Node> x(new Node(s, r, p, n));
        layers[s].push_back(x);
        return x;
      }


      friend std::ostream& operator<<(std::ostream & out, const BDD & b) {
        out << "digraph G {\n";
        for(auto [s, layer] : b.layers) {
          for(auto x : layer) {
            std::string fill = x->r_t >=0 ? "style=filled," : "";
            std::string box = (x->s == 0 || x ->s == 1) ? "shape=box," : "";
            out << "  \"" << x << "\" [" << fill << box << "label=\""<< x->s;
            if(false) { // set this to true to view pointer addresses in the graph.
              out << ","<< x;
            }
            out << "\"];\n";
          }
          for(auto x : layer) {
            if(x!=b.zero && x != b.one) {
              out << "  \"" << x << "\"->\"" << x->p << "\"\n";
              out << "  \"" << x << "\"->\"" << x->n << "\"[style=dotted];\n";
            }
          }
          out << "  rank = same; ";
          for(auto x : layer) {
            out << "\"" << x << "\";";
          }
          out << "\n";
        }
        out << "}\n";
        return out;
      }
    };
  }
}
