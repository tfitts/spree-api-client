module Spree
  module API
    class Client
      module Taxons

        def taxons(options={})
          Hashie::Mash.new self.class.get("taxons", options)
        end

        def taxon(taxon_ids, options={})
          return [] unless taxon_ids.length
          Hashie::Mash.new self.class.get("taxons/?ids=#{taxon_ids.join(',')}", options)
        end

        def taxonomy_taxons(taxonomy_id, options={})
          Hashie::Mash.new self.class.get("taxonomies/#{taxonomy_id}/taxons", options)
        end

        def taxonomy_taxon(taxonomy_id, taxon_id, options={})
          Hashie::Mash.new self.class.get("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def create_taxon(taxonomy_id, options={})
          Hashie::Mash.new self.class.post("taxonomies/#{taxonomy_id}/taxons/", options)
        end

        def update_taxon(taxonomy_id, taxon_id, options={})
          Hashie::Mash.new self.class.put("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def delete_taxon(taxonomy_id, taxon_id, options={})
          Hashie::Mash.new self.class.delete("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end
      end
    end
  end
end
