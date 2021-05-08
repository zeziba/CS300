module ProjectsHelper
    def locate_readme(str)
        re = /(?=(https?:\/\/github.com\/(\w|[\/])*README\.?\w*))/m
        str.scan(re) do |match|
            return match[0].to_s
        end
    end

    def allow_project_modify?(project)
        return false unless current_project_user
        project.user == current_project_user.email
    end

    def create_link?(str)
        
    end

    def check_readme_str?(str)
        re = /(?=(https?:\/\/github.com\/(\w|[\/])*README\.?\w*))/m
        re.match?(str)
    end

    def remove_at(str)
        re = /(?<=)(.*)(?=(.*?)(\@\w*\.\w*))/m
        str.scan(re) do |match|
            return match[0].to_s
        end
    end
end
