# http://github.com/thoughtbot/factory_girl/tree/master

Factory.define :survey do |s|
  s.title	      	{}
  s.description		{}
  s.access_code		{}
  s.active_at	  	{}
  s.inactive_at		{}
  s.css_url		    {}
end

Factory.sequence :survey_section_display_order do |n|
end

Factory.define :survey_section do |s|
  s.survey_id   	            {}
  s.title		                  {}
  s.description	              {}
  s.display_order	            {}
  s.reference_identifier		  {}
  s.data_export_identifier		{}
end

Factory.sequence :question_display_order do |n|
end

Factory.define :question do |s|
  s.survey_section_id		    {}
  s.text		                {}
  s.short_text		          {}
  s.help_text	        	    {}
  s.pick	            	    {}
  s.display_type	    	    {}
  s.display_order	    	    {}
  s.question_group_id		    {}
  s.is_mandatory	    	    {}
  s.reference_identifier		{}
  s.data_export_identifier	{}
  s.display_width       		{}
end

Factory.sequence :answer_display_order do |n|
end

Factory.define :answer do |a|
  a.question_id	            	{}
  a.text	                  	{}
  a.short_text            		{}
  a.help_text	              	{}
  a.weight		                {}
  a.response_class        		{}
  a.display_order	        	  {}
  a.is_exclusive	        	  {}
  a.hide_label    		        {}
  a.reference_identifier		  {}
  a.data_export_identifier		{}
  a.common_data_identitier		{}
  a.max_value	              	{}
  a.min_value	              	{}
  a.length		                {}
  a.decimal_precision     		{}
  a.allow_negative	          {}
  a.allow_blank		            {}
  a.unit		                  {}
  a.display_length		        {}
end

Factory.define :response_set do |r|
  r.user_id	        {}
  r.survey_id	      {}
  r.access_code	    {}
  r.started_at	    {}
  r.completed_at		{}
end

Factory.define :response do |s|
  r.response_set_id		{}
  r.question_id	    	{}
  r.answer_id	      	{}
  r.datetime_value		{}
  r.integer_value	  	{}
  r.float_value	      {}
  r.unit      	      {}
  r.text_value	      {}
  r.string_value	  	{}
  r.response_other		{}
  r.response_group		{}
end