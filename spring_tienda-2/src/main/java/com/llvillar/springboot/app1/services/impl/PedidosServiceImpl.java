package com.llvillar.springboot.app1.services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.llvillar.springboot.app1.model.DetallePedido;
import com.llvillar.springboot.app1.model.DetallePedidoId;
import com.llvillar.springboot.app1.model.Pedido;
import com.llvillar.springboot.app1.repository.DetallePedidoRepository;
import com.llvillar.springboot.app1.repository.PedidoRepository;
import com.llvillar.springboot.app1.services.PedidosService;

@Service
public class PedidosServiceImpl implements PedidosService{

    @Autowired
    PedidoRepository repositoryPedido;

    @Autowired
    DetallePedidoRepository repositoryDetalle;

    @Override
    public Page<Pedido> findAll(Pageable pageable) {
        return repositoryPedido.findAll(pageable);
    }

    @Override
    public Pedido find(int codigo) {
        Optional<Pedido> findById = repositoryPedido.findById(codigo);
        if(findById != null){
            Pedido pedido = findById.get();

            pedido.setDetallePedidos(repositoryDetalle.findByPedidoCodigo(pedido.getCodigo()));
            
            return pedido;
        }

        return null;
    }

    @Override
    public void save(Pedido pedido) {
        
        repositoryPedido.save(pedido);

        List<DetallePedido> detallePedidos = pedido.getDetallePedidos();
        for (DetallePedido detallePedido : detallePedidos) {
            DetallePedidoId id = new DetallePedidoId(pedido.getCodigo(), detallePedido.getProducto().getCodigo());
            detallePedido.setId(id);
            repositoryDetalle.save(detallePedido);
        }

    }

    @Override
    @Transactional
    public void delete(int codigo) {

        repositoryDetalle.deleteByPedidoCodigo(codigo);
        repositoryPedido.deleteById(codigo);        
    }
}