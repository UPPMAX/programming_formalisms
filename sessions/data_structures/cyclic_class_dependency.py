class Node:
    """Node class."""
    def get_n_edges(self):
        return 0


class Edge:
    """Edge class."""
    def __init__(self):
        self.source_node = []
        self.target_node = []
    def has_source_node(self):
        assert len(self.source_node) == 0 or len(self.source_node) == 1
        return len(self.source_node) == 1
    def has_target_node(self):
        assert len(self.target_node) == 0 or len(self.target_node) == 1
        return len(self.target_node) == 1
    def set_source_node(self, source_node):
        assert not self.has_source_node()
        self.source_node = source_node
    def set_target_node(self, target_node):
        assert not self.has_target_node()
        self.target_node = target_node




def test_minimal_node():
    n = Node()
    assert n.get_n_edges() == 0

def test_minimal_edge():
    e = Edge()
    assert e.has_source_node() == False
    assert e.has_target_node() == False

def test_edge_gets_nodes_added():
    n = Node()
    e = Edge()
    e.set_source_node(n)
    e.set_target_node(n)
    assert e.has_source_node()
    assert e.has_target_node()

def test():
    test_minimal_node()
    test_minimal_edge()
    test_edge_gets_nodes_added()

test()


