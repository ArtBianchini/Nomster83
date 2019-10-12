class Photo < ApplicationRecord: :Base
	mount_uploader <%= f.input:picture %> , PictureUploader;
end
