package etgov.mof.pfmrt.conf.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.conf.dao.DocumentRepository;
import etgov.mof.pfmrt.conf.model.Document;

@Service
public class DocumentService {
	
	@Autowired
	private DocumentRepository documentRepository;
	
	//Return list of document
		public List<Document> getDocuments(){
			return documentRepository.findAll();
		}

		public void save(Document document) {
			// TODO Auto-generated method stub
		    documentRepository.save(document);
		}

		public Optional<Document> findBy(String id) {
			
			return documentRepository.findById(id);
		}

		public void delete(String id) {
			// TODO Auto-generated method stub
			documentRepository.deleteById(id);
		}
		
		
}
