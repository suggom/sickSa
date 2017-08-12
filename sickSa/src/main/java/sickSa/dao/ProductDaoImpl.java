package sickSa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import sickSa.domain.Product;


public  class ProductDaoImpl implements ProductDao {
	public static final String namespace = "com.mybatis3.mapper.ProductMapper";
	private SqlSession sqlSession;
	
	public ProductDaoImpl(){
		
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("2.### HelloDaoImpl.setSqlSession("+sqlSession+")");
		this.sqlSession = sqlSession;
	}

	@Override
	public int insertProduct(Product product){
		int insertRow=
				sqlSession.insert(namespace+"insertProduct",product);
		/*
		 * DML 문전송이후에는 반드시 commit호출
		 */
		return insertRow;
	}
	@Override
	public int updateProduct(Product updateProduct){
		int updateRow=
				sqlSession.insert(namespace+"updateProduct",
						updateProduct);
		/*
		 * DML 문전송이후에는 반드시 commit호출
		 */
		return updateRow;
		
	}
	
	@Override
	public Product findProductById(int pdt_id){

		
		Product findProduct=sqlSession
				.selectOne(namespace+"findStudentById",pdt_id);
		
		
		return findProduct;
		
	}
	
	/*********************LIST*************************/
	
	@Override
	public List<Map> findAllProductsMap(){
		List<Map> mapList =sqlSession
				.selectList(namespace+"findAllProductsMap");
		return mapList;
	}

	@Override
	public int deleteProduct(Product product) {
		int deletRow = sqlSession.delete(namespace+"deleteProduct",product);
		return deletRow;
	}
	

}
